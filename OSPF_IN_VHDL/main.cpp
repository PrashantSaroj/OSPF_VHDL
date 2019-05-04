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


vi nextnode(8), cost(8);
vector<string> lsupdate;

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

void add_update_header(int node, int adrouter){

	lsupdate.push_back(intobits(2, 8));
	lsupdate.push_back(intobits(4, 8));
	string temp = intobits(116, 16);
	lsupdate.push_back(temp.substr(0, 8));
	lsupdate.push_back(temp.substr(8, 8));
	temp = intobits(node, 32); //router id
	lsupdate.push_back(temp.substr(0, 8));
	lsupdate.push_back(temp.substr(8, 8));
	lsupdate.push_back(temp.substr(16, 8));
	lsupdate.push_back(temp.substr(24, 8));
	temp = intobits(1, 32); //area id
	lsupdate.push_back(temp.substr(0, 8));
	lsupdate.push_back(temp.substr(8, 8));
	lsupdate.push_back(temp.substr(16, 8));
	lsupdate.push_back(temp.substr(24, 8));

	//checksum & autype
	temp = intobits(1, 32);
	lsupdate.push_back(temp.substr(0, 8));
	lsupdate.push_back(temp.substr(8, 8));
	lsupdate.push_back(temp.substr(16, 8));
	lsupdate.push_back(temp.substr(24, 8));

	//authentication 2 times

	temp = intobits(1, 32);
	lsupdate.push_back(temp.substr(0, 8));
	lsupdate.push_back(temp.substr(8, 8));
	lsupdate.push_back(temp.substr(16, 8));
	lsupdate.push_back(temp.substr(24, 8));
	temp = intobits(1, 32);
	lsupdate.push_back(temp.substr(0, 8));
	lsupdate.push_back(temp.substr(8, 8));
	lsupdate.push_back(temp.substr(16, 8));
	lsupdate.push_back(temp.substr(24, 8));

	//---------24 bytes done

	lsupdate.push_back(intobits(192, 8));
	lsupdate.push_back(intobits(168, 8));
	lsupdate.push_back(intobits(node, 8));
	lsupdate.push_back(intobits(0, 8));

	temp = intobits(adrouter, 32); //advertising router
	lsupdate.push_back(temp.substr(0, 8));
	lsupdate.push_back(temp.substr(8, 8));
	lsupdate.push_back(temp.substr(16, 8));
	lsupdate.push_back(temp.substr(24, 8));

	temp = intobits(1, 32); //ls seq. no.
	lsupdate.push_back(temp.substr(0, 8));
	lsupdate.push_back(temp.substr(8, 8));
	lsupdate.push_back(temp.substr(16, 8));
	lsupdate.push_back(temp.substr(24, 8));

}

void add_lsa_content(int port){
	int nexthop = nextnode[port];
	int c = cost[port];

	string temp = intobits(nexthop, 32); //next router id
	lsupdate.push_back(temp.substr(0, 8));
	lsupdate.push_back(temp.substr(8, 8));
	lsupdate.push_back(temp.substr(16, 8));
	lsupdate.push_back(temp.substr(24, 8));


	lsupdate.push_back(intobits(192, 8));
	lsupdate.push_back(intobits(168, 8));
	lsupdate.push_back(intobits(nexthop, 8));
	lsupdate.push_back(intobits(0, 8));

	temp = intobits(c, 16);
	lsupdate.push_back(temp.substr(0, 8));
	lsupdate.push_back(temp.substr(8, 8));
}


int main(){
	ios::sync_with_stdio(false);
	cin.tie(0);
	cout.tie(0);
		
	// int start = 35;
	//=============================================PARSE UPDATE PACKET=========================================
	// vi bytenumbers;
	// bytenumbers.push_back(31);
	// for(int i=0; i<8; i++){
	// 	start+= 4;
	// 	bytenumbers.push_back(start);
	// 	start+= 6;
	// 	bytenumbers.push_back(start);
	// }

	// int bytestart = 24, done = 0, arrpos = 135;
	// int numpos = 0;
	// while(done < 92){
	// 	bitset<16> x(bytestart), y(bytestart+1);

	// 	cout << "WHEN \"" << x << "\" => \n";
	// 	if(bytenumbers[numpos] == bytestart){
	// 		cout << "UpdataArray(" << arrpos << " downto " << arrpos-7 << ") <= packet_in;\n";
	// 		arrpos-=8;
	// 		numpos++;
	// 	}
	// 	cout << "counter <= \"" << y << "\";\n";
	// 	bytestart++;
	// 	done++;
	// }

	//=======================================UPDATE TESTBENCH================================================

	// cout << "Neighbour node from whom lsa is recieved: ";
	cout.flush();
	int from;
	cin >> from;

	// cout << "Node whose lsa is required: ";
	cout.flush();
	int n;
	cin >> n;

	// cout << "Give number of edges: ";
	cout.flush();
	int m;
	cin >> m;

	

	for(int i=0; i<m; i++){
		int v, c;
		cin >> v >> c;
		nextnode[i] = v;
		cost[i] = c;
	}

	for(int i=m; i<8; i++){
		nextnode[i] = 0;
		cost[i] = 255;
	}


	add_update_header(from, n);

	for(int i=0; i<8; i++){
		add_lsa_content(i);
	}

	cerr << lsupdate.size() << endl;
	assert(lsupdate.size() == 116);

	for(auto &it: lsupdate){
		cout << "packet_in <= \"" << it << "\";wait for clk_period;\n";
	}
	return 0;	

}