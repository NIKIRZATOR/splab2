#include <stdio.h>

int main()
{
int b = 255;
int c;
int arr[] = {65280, 65320, 65323, 65535, 65532, 49407, 49311, 49297, 49393, 49201};
int inv_arr[4];

for(int i = 0; i<10; i++)
{
c = arr[i] ^ b;
inv_arr[i] = c;
i = i + 1;
}

printf("Весь начальный массив\n");
for(int j = 0; j<10; j++)
{
printf("%d ", arr[j]);
}
printf("\n");

printf("Четные элементы массива\n");
for(int i = 0; i<10; i++)
{
printf("%d ", arr[i]);
i = i + 1;
}
printf("\n");

printf("Инвертированный массив\n");

for(int j = 0; j<5; j++)
{
printf("%d ", inv_arr[j]);
}
}
