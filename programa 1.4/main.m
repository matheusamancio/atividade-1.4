//
//  main.m
//  programa 1.4
//
//  Created by Matheus Amancio Seixeiro on 2/9/15.
//  Copyright (c) 2015 Matheus Amancio Seixeiro. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Mascote.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        
        Mascote*m1 = [[ Mascote alloc ]initWithVida:7 andEnergia:100];
        while (!([m1 acessoVida ] <0)) {
            
            
            
            int a;
            printf(" digite um comando= ");
            scanf("%d", &a);
            
            if(a == 0)
            {
                printf(" 0- ajuda, 1-comer, 2-dormir, 3-brincar, 4- banho\n");
                printf(" digite um comando= ");
                scanf("%d", &a);
            }
            
        
                if (a == 1) {
                    [m1 comer];
                }
            else
                if (a==2) {
                    [m1 dormir];
                }
            else
                if (a==3) {
                    [m1 brincar];
                }
            else
                if (a==4) {
                    [m1 banho];
                }

            [m1 imprimaVida];
            [m1 imprimaEnergia];
            [m1 imprimaFome];
            [m1 imprimaChateado];
            [m1 imprimaSujo];
            [m1 sentirFome];
            [m1 sentirCansado];
            [m1 sentirChateado];
            [m1 sentirSujo];
            

            
        }
        
    }
    return 0;
}
