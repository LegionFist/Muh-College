#include <stdio.h>
#include <string.h>


//	PEMROGRAMAN LANJUT
//	Mochammad Dzaki Al Vriano
//	19081010138


typedef char string[256];

typedef struct{
string Tanggal;
string Bulan;
string Tahun;
}Lahir;

typedef struct {
string email;
string NPM[12];
string uname;
string pw;
Lahir L;
char blood[2];
}SignUp;

 

SignUp InputUserData (SignUp S) {

printf("\t============= ACCOUNT SIGN UP ===============\n");
printf("\t=============================================\n");
printf("\t E-mail   : "); scanf("%s", &S.email);
printf("\t NPM 	  : "); scanf("%s", &S.NPM);
printf("\t Username : "); scanf("%s", &S.uname);
printf("\t Password : "); scanf("%s", &S.pw);
printf("\t DOB (E.g : DD MM YYYY) \n");
printf("\t : ");scanf("%s%s%s", &S.L.Tanggal, &S.L.Bulan, &S.L.Tahun);
printf("\t Blood 	: "); scanf("%2s", &S.blood);
printf("\n\n\n");

return S;
}

void ShowUserData (SignUp S) {

printf("\t============= ACCOUNT DETAILS ===============\n");
printf("\t=============================================\n");
printf("\t E-mail   : %s\n ", S.email);
printf("\t NPM 	  : %s\n ", S.NPM);
printf("\t Username : %s\n ", S.uname);
printf("\t Password : %s\n ", S.pw);
printf("\t DOB 	  : %s - %s - %s \n", S.L.Tanggal, S.L.Bulan, S.L.Tahun);
printf("\t Blood 	  : %s\n ", S.blood);
printf("\n\n");
}

int main() {
SignUp S;

S=InputUserData(S);
ShowUserData(S);

return 0;
}
