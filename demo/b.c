int var2 = 3;
static int var3;
int bar(void)
{
	extern int var1;
	return var1 + foo();
}

