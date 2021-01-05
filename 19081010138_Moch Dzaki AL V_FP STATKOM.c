#include <stdio.h>
#include <stdlib.h>


int main() {
	
	float p_high,p_med,p_low,long_dur_h,long_dur_m,mod_dur_h,mod_dur_m,
            high_dir_m,high_dir_h,med_dir_h,med_dir_m,low_dir_h,
            high1_h,high1_m,med1_h,med1_m,low1_h,low1_m,
            pred_h_h,pred_m_h,pred_m_m,total_imdb_h,total_imdb_m,total_imdb_l;
	
	float high=7,med=24,low=19;
	int total;
	float dur_long_h=6,dur_long_m=10,dur_mod_h=4,dur_mod_m=10,
    dir_h_h=4,dir_h_m=11,dir_m_h=3,dir_m_m=9,dir_l_h=4,
    act1_h_h=5,act1_h_m=9,act1_m_h=3,act1_m_m=8,act1_l_h=3,act1_l_m=2,
    h_pred_h=7,m_pred_h=2,m_pred_m=19;
	
	
	printf("*****************************************************\n");
	printf("\t\tPREDIKSI RATING FILM\n");
	printf("*****************************************************\n\n");
	printf("===================================================\n");
	printf("\t  PROGRAM NAIVE BAYES \n");
	printf("===================================================\n\n\n");
	printf("\t DATA TRAINING\n\n");
	printf(" NO  Duration  Dir_Fb  Act1_Fb   Pred    IMDB SCORE\n");
	printf(" 1   LONG       MED     HIGH     MED        HIGH\n");
	printf(" 2   LONG       HIGH    MED      HIGH       HIGH\n");
	printf(" 3   MODERATE   MED     MED      MED         MED\n");
	printf(" 4   LONG       HIGH    MED      MED         MED\n");
	printf(" 5   MODERATE   HIGH    HIGH     HIGH       HIGH\n");
	printf("...   ...       ...     ...      ...         ...\n");
	printf("...   ...       ...     ...      ...         ...\n");
	printf("48   LONG       HIGH    HIGH     MED         MED\n");
	printf("49   MODERATE   MED     LOW      MED         MED\n");
	printf("50   MODERATE   LOW     LOW      HIGH       HIGH\n\n\n\n");

	//perhitungan jumlah data yang dipakai
	printf("==================================\n");
	printf("*****total data*****\n");
	printf("==================================\n");
	total=high+low+med;
	printf("total data =%d\n\n",total);
	
	printf("=========================================\n");
	printf("     probabilitas tiap-tiap atribut     \n");
	printf("=========================================\n\n");
	printf("-----------------------------------\n");
	printf("probabilitas IMDB low, med, & high |\n");
	printf("------------------------------------\n");
	p_high=high/total;
	printf("probabilitas high score =%f\n",p_high);
	p_med=med/total;
	printf("probabilitas med score=%f\n",p_med);
    p_low=low/total;
	printf("probabilitas low score =%f\n",p_low);
	printf("======================================\n\n");
	
	printf("-----------\n");
	printf("  Duration |\n");
	printf("-----------\n");
	long_dur_h=dur_long_h/high;
	printf("Long Duration - High IMDB=%f\n",long_dur_h);
    long_dur_m=dur_long_m/med;
    printf("Long Duration - Med IMDB=%f\n",long_dur_m);
    mod_dur_h=dur_mod_h/high;
    printf("Moderate Duration - High IMDB=%f\n",mod_dur_h);
    mod_dur_m=dur_mod_m/med;
    printf("Moderate Duration - Med IMDB=%f\n",mod_dur_m);
	printf("======================================\n\n");

	printf("-----------\n");	
	printf("   Dir_FB  |\n");
	printf("-----------\n");
    high_dir_h=dir_h_h/high;
    printf("High Dir FB - High IMDB=%f\n",high_dir_h);
	high_dir_m=dir_h_m/med;
	printf("High Dir FB - Med IMDB=%f\n",high_dir_m);
    med_dir_h=dir_m_h/high;
    printf("Med Dir FB - High IMDB=%f\n",med_dir_h);
    med_dir_m=dir_m_m/med;
    printf("Med Dir FB - Med IMDB=%f\n",med_dir_m);
    low_dir_h=dir_l_h/high;
    printf("Low Dir FB - High IMDB=%f\n",low_dir_h);
	printf("======================================\n\n");
	
	printf("-----------\n");
	printf("  Act1_Fb  |\n");
	printf("-----------\n");
	high1_h=act1_h_h/high;
	printf("High Act1 FB - High IMDB=%f\n",high1_h);
	high1_m=act1_h_m/med;
	printf("High Act1 FB - Med IMDB=%f\n",high1_m);
	med1_h=act1_m_h/high;
	printf("Med Act1 FB - High IMDB=%f\n",med1_h);
	med1_m=act1_m_m/med;
	printf("Med Act1 FB - Med IMDB=%f\n",med1_m);
	low1_h=act1_l_h/high;
	printf("Low Act1 FB - High IMDB=%f\n",low1_h);
	low1_m=act1_l_m/med;
	printf("Low Act1 FB - Med IMDB=%f\n",low1_m);
	printf("======================================\n\n");
	
	printf("-----------\n");
	printf("    Pred   |\n");
	printf("-----------\n");
	pred_h_h=h_pred_h/high;
	printf("High Pred - High IMDB=%f\n",pred_h_h);
	pred_m_h=m_pred_h/high;
	printf("Med Pred - High IMDB=%f\n",pred_m_h);
	pred_m_m=m_pred_m/med;
	printf("Med Pred - Med IMDB=%f\n",pred_m_m);
	printf("======================================\n\n");
	
	printf("--------------------------------\n");
	printf("total probabilitas tiap atribut |\n");
	printf("--------------------------------\n");
	total_imdb_h=p_high*long_dur_h*mod_dur_h*high_dir_h*med_dir_h*low_dir_h*high1_h*med1_h*low1_h*pred_h_h*pred_m_h;
	printf("total probabilitas IMDB High =%f\n",total_imdb_h);
	total_imdb_m=p_med*long_dur_m*mod_dur_m*high_dir_m*med_dir_m*high1_m*med1_m*low1_m*pred_m_m;
	printf("total probabilitas IMDB Med =%f\n",total_imdb_m);
	
	//total_imdb_l=p_low*a1_lulus*b2_lulus*c3_lulus*b4_lulus*c5_lulus;
	//printf("total probabilitas IMDB Low =%f\n",total_imdb_l);

	printf("\n\n");
	if(	total_imdb_h > total_imdb_m){
		printf("---------------------------------------------\n");
		printf("prediksi yang didapat adalah IMDB Score High |\n");
		printf("---------------------------------------------\n");
	}if(total_imdb_h < total_imdb_m){
		printf("---------------------------------------------\n");
		printf("prediksi yang didapat adalah IMDB Score Medium |\n");
		printf("---------------------------------------------\n");
	}
	return 0;
}
