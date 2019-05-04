	#include<bits/stdc++.h>
using namespace std;
typedef long long ll;
typedef vector<ll> vi;
typedef std::vector<vector<ll> > vvi;
typedef pair<ll, ll> pi;
typedef vector<ll> vll;
typedef vector<pi> vpi;
#define inf (ll)1e9

#define debugone(x) cout << #x << " " << x << "\n"; cout.flush();
#define debugtwo(x) cout << #x << "-------------" << "\n";for(auto &it: x) cout << it << " ";cout << "\n"; cout.flush();
#define debugthree(x, i, j) cout << #x << "------------" << "\n";cout << "from " << i << " to " << j << "\n";for(ll k=i; k<=j; k++) cout << x[k] << " ";cout << "\n"; cout.flush();

#define mod 998244353

vector<string> ddpacket[8];
int ddsender[8];
bool lsahas[8][32];

bool exists[31];


vector<string> lsa[32];
int n, m;
int k;

int edges[32][8];
int costs[32][8];
vi tempedges[32], tempcosts[32];

string intobits(int x, int y){

	string res;

	if(y == 8){
		bitset<8> temp(x);
		res = temp.to_string();
	}
	else if(y == 16){
		bitset<16> temp(x);
		res = temp.to_string();
	}
	else if(y == 32){
		bitset<32> temp(x);
		res = temp.to_string();
	}

	return res;
}
void add_dd_header(int port){
	int node = ddsender[port];


	ddpacket[port].push_back(intobits(2, 8));
	ddpacket[port].push_back(intobits(2, 8));
	string temp = intobits(2956, 16);
	ddpacket[port].push_back(temp.substr(0, 8));
	ddpacket[port].push_back(temp.substr(8, 8));
	temp = intobits(node, 32);
	ddpacket[port].push_back(temp.substr(0, 8));
	ddpacket[port].push_back(temp.substr(8, 8));
	ddpacket[port].push_back(temp.substr(16, 8));
	ddpacket[port].push_back(temp.substr(24, 8));
	temp = intobits(1, 32);
	ddpacket[port].push_back(temp.substr(0, 8));
	ddpacket[port].push_back(temp.substr(8, 8));
	ddpacket[port].push_back(temp.substr(16, 8));
	ddpacket[port].push_back(temp.substr(24, 8));

	//checksum & autype
	temp = intobits(1, 32);
	ddpacket[port].push_back(temp.substr(0, 8));
	ddpacket[port].push_back(temp.substr(8, 8));
	ddpacket[port].push_back(temp.substr(16, 8));
	ddpacket[port].push_back(temp.substr(24, 8));

	//authentication 2 times

	temp = intobits(1, 32);
	ddpacket[port].push_back(temp.substr(0, 8));
	ddpacket[port].push_back(temp.substr(8, 8));
	ddpacket[port].push_back(temp.substr(16, 8));
	ddpacket[port].push_back(temp.substr(24, 8));
	temp = intobits(1, 32);
	ddpacket[port].push_back(temp.substr(0, 8));
	ddpacket[port].push_back(temp.substr(8, 8));
	ddpacket[port].push_back(temp.substr(16, 8));
	ddpacket[port].push_back(temp.substr(24, 8));

	//32 bits 0|0|options|random
	temp = intobits(1, 32);
	ddpacket[port].push_back(temp.substr(0, 8));
	ddpacket[port].push_back(temp.substr(8, 8));
	ddpacket[port].push_back(temp.substr(16, 8));
	ddpacket[port].push_back(temp.substr(24, 8));

	//32 dd seqno
	temp = intobits(1, 32);
	ddpacket[port].push_back(temp.substr(0, 8));
	ddpacket[port].push_back(temp.substr(8, 8));
	ddpacket[port].push_back(temp.substr(16, 8));
	ddpacket[port].push_back(temp.substr(24, 8));

}

void add_lsa_header(int node){

	lsa[node].push_back(intobits(192, 8));
	lsa[node].push_back(intobits(168, 8));
	lsa[node].push_back(intobits(node, 8));
	lsa[node].push_back(intobits(0, 8));
	string temp = intobits(node, 32);
	lsa[node].push_back(temp.substr(0, 8));
	lsa[node].push_back(temp.substr(8, 8));
	lsa[node].push_back(temp.substr(16, 8));
	lsa[node].push_back(temp.substr(24, 8));

	temp = intobits(1, 32);
	lsa[node].push_back(temp.substr(0, 8));
	lsa[node].push_back(temp.substr(8, 8));
	lsa[node].push_back(temp.substr(16, 8));
	lsa[node].push_back(temp.substr(24, 8));
}


void make_advertisement(int node){
	//192.168.node.0

	add_lsa_header(node);

	for(int i=0; i<8; i++){
		//LS ID
		string temp = intobits(edges[node][i], 32);
		lsa[node].push_back(temp.substr(0, 8));
		lsa[node].push_back(temp.substr(8, 8));
		lsa[node].push_back(temp.substr(16, 8));
		lsa[node].push_back(temp.substr(24, 8));

		//LS DATA OR IP

		lsa[node].push_back(intobits(192, 8));
		lsa[node].push_back(intobits(168, 8));
		lsa[node].push_back(intobits(edges[node][i], 8));
		lsa[node].push_back(intobits(0, 8));

		temp = intobits(costs[node][i], 16);
		lsa[node].push_back(temp.substr(0, 8));
		lsa[node].push_back(temp.substr(8, 8));
	}
}


void add_lsa(int port){
	for(int i=0; i<32; i++){
		if(lsahas[port][i]){
			for(int j=0; j<lsa[i].size(); j++){
				ddpacket[port].push_back(lsa[i][j]);
			}
		}
		else{
			for(int j=0; j<lsa[31].size(); j++){
				ddpacket[port].push_back(lsa[i][j]);
			}
		}
	}
}

void print_valid(){
	for(int i=1; i<=k; i++){
		cout << "valid_in" << i << " <= '1';";
	}
	cout << "\n";
}


int main(){
	ios::sync_with_stdio(false);
	cin.tie(0);
	cout.tie(0);
		
	// cout << "Number of nodes: ";
	cout.flush();
	cin >> n;

	for(int i=0; i<n; i++){
		exists[i] = true;
	}

	// cout << "Number of edges: ";
	cout.flush();
	cin >> m;

	// cout << "Provide all the edges---------------" << endl;
	cout.flush();
	for(int i=0; i<m; i++){
		int u, v, c;
		cin >> u >> v >> c;
		tempedges[u].push_back(v);
		tempcosts[u].push_back(c);
		tempedges[v].push_back(u);
		tempcosts[v].push_back(c);
	}

	for(int i=0; i<32; i++){
		for(int j=0; j<tempedges[i].size(); j++){
			edges[i][j] = tempedges[i][j];
			costs[i][j] = tempcosts[i][j];
		}
	}

	for(int i=0; i<32; i++){
		make_advertisement(i);
	}

	
	// cout << "Provide #ports for 0th node: ";
	cout.flush();
	cin >> k;

	// cout << "First number: #LSA, Second number: node from which ddpacket will come, Remainining: all the nodes--------------\n";
	cout.flush();
	for(int i=0; i<k; i++){
		int x;
		cin >> x;
		add_dd_header(i);

		for(int j=0; j<x; j++){
			int y;
			cin >> y;
			if(j == 0){
				ddsender[i] = y;
			}

			if(j != 0) lsahas[i][y] = true;
		}
	}

	for(int i=0; i<8; i++){
		add_lsa(i);
	}

	vi counter(8, 0);

	print_valid();

	for(int i=0; i<32; i++){
		//debugone(lsa[i].size());
	}
	for(int i=0; i<8; i++){
		//debugone(ddpacket[i].size());
		if(ddsender[i] != 0){
			assert(ddpacket[i].size() == 2976);
		}
	}

	for(int i=0; i<2976; i++){

		for(int j=0; j<8; j++){
			if(ddsender[j]){
				cout << "packet_in" << (j+1) << " <= \"" << ddpacket[j][i] << "\";";
			}
		}
		cout << "wait for clk_period;\n";
	}
	return 0;

}