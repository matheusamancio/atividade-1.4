//
//  Mascote.h
//  programa 1.4
//
//  Created by Matheus Amancio Seixeiro on 2/9/15.
//  Copyright (c) 2015 Matheus Amancio Seixeiro. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Mascote : NSObject
{
    int vida;
    int energia;
    int fome;
    int chateado;
    int sujo;
    int cansado;
    
}
- (instancetype) initWithVida : (int)v andEnergia : (int)e;


- (int) acessoVida;
- (int) acessoEnergia;
- (int) acessoFome;
- (int) acessoChateado;
- (int) acessoSujo;
- (int) acessoCansado;
- (void) imprimaVida;
- (void) imprimaEnergia;
- (void) imprimaFome;
- (void) imprimaChateado;
- (void) imprimaSujo;
- (void) imprimaCansado;
- (void) sentirCansado;
- (void) sentirFome;
- (void) sentirSujo;
- (void) sentirChateado;
- (void) perderEnergia: (int)quanto;
- (void) morrer;
- (void) renascer;
- (void) comer;
- (void) dormir;
- (void) banho;
- (void) brincar;


@end
