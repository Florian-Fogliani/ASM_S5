#include <stdio.h>
#include <stdlib.h>

extern int str_len(char *a);
extern void str_cat(char *a, char *b);
extern int myadd(int a, int b);
extern unsigned int fact(unsigned int n);
unsigned long long myatoull(const char *s);
void get_cpu_vendor_id(char id[]);
extern char *my_strcpy(char *dest, const char *source);
extern char *my_strcpy_rep(char *dest, const char *source);
extern void my_pow(int n);

int main()
{
	char *a = "Oscar";
	printf("Res 5 = %d\n", str_len(a));

	char *f = malloc(10);
	f[0] = 'F';
	f[1] = 'l';
	f[2] = 'o';
	f[3] = '\0';

	char *o = "Osc";
	str_cat(f,o);
	printf("Res Flo + Osc = %s\n", f); 
	char *f2 = malloc(10);
	f2[0] = '\0';
	str_cat(f2,o);
	printf("Res None + Osc = %s\n", f2); 
	

	printf("1+1 = %d\n", myadd(1,1));
	printf("2+1 = %d\n", myadd(2,1));
	printf("1+0 = %d\n", myadd(1,0));
	printf("0+1 = %d\n", myadd(0,1));
	printf("201872+1 = %d\n", myadd(201872,1));

	printf("Fact 0 = %d\n", fact(0));
	printf("Fact 2 = %d\n", fact(2));
	printf("Fact 5 = %d\n", fact(5));
	printf("Fact 7 = %d\n", fact(7));
	printf("Fact 10 = %d\n", fact(10));


	printf("Atoull 42 = %d\n", myatoull("42"));
	printf("Atoull 2078 = %d\n", myatoull("2078"));
	printf("Atoull 1 = %d\n", myatoull("1"));
	printf("Atoull 21 = %d\n", myatoull("21"));
	printf("Atoull 123456 = %d\n", myatoull("123456"));


	char id[278];
	get_cpu_vendor_id(id);
	printf("CPU Vendor ID %s \n", id);  

	char *d = malloc(10);

	d = my_strcpy(d, "CpyISGood");
	printf("CpyISGood = %s\n", d);

	d = malloc(10);

	d = my_strcpy_rep(d, "CpyISGood");
	printf("CpyISGood = %s\n", d);
	my_pow(5);
	return 0;
}
