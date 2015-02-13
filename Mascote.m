//
//  Mascote.m
//  programa 1.4
//
//  Created by Matheus Amancio Seixeiro on 2/9/15.
//  Copyright (c) 2015 Matheus Amancio Seixeiro. All rights reserved.
//

#import "Mascote.h"

@implementation Mascote

- (instancetype) initWithVida : (int)v andEnergia : (int)e;
{
    self =  [super init];
    if (self)
    {
        
        vida = v;
        [self renascer];
        energia = e;

    }
    return self;
    
}

- (int) acessoVida;
{
    return vida;
}

- (int) acessoEnergia;
{
    return energia;
}
- (int) acessoFome;
{
    return fome;
}

- (int) acessoChateado;
{
    return chateado;
}
- (int) acessoSujo;
{
    return sujo;
}
- (int) acessoCansado;
{
    return cansado;
}

- (void) imprimaVida
{
    NSLog(@"vida = %i",vida);
}

- (void) imprimaEnergia;
{
     NSLog(@"energia = %i",energia);
}

- (void) imprimaFome;
{
    NSLog(@"Fome = %i",fome);
}
- (void) imprimaChateado;
{
    NSLog(@"Chateado = %i",chateado);
}
- (void) imprimaSujo;
{
    NSLog(@"Sujo = %i", sujo);
}
- (void) imprimaCansado;
{
    NSLog(@"Cansado = %i", cansado);
}

-(void) sentirFome;
{
    fome = fome+10;
    if (fome ==100) {
        [self perderEnergia: 60];
        fome = 0;
    }
}

- (void) sentirCansado;
{
    cansado = cansado +20;
    
    if (cansado ==100) {
        [self perderEnergia:40];
        cansado = 0;
    }
}
- (void) sentirChateado;
{
    chateado = chateado +20;
    if (chateado ==100) {
        [self perderEnergia:50];
        chateado = 0;
    }
}


-(void) sentirSujo;
{
    sujo = sujo + 5;
    if (sujo == 100) {
        [self perderEnergia:20];
        sujo = 0;
    }
}

-(void)perderEnergia: (int)quanto;
{
    energia= energia - quanto ;
    if (energia <= 0) {
        [self morrer];
        energia = 100;
    }
}


- (void)morrer;
{
    if (vida >=1) {
        NSLog(@"perdeu uma vida");
        vida = vida -1;
        [self renascer];
    }
    else
        NSLog(@"fim de jogo");
}

- (void)renascer;
{
    energia = 100;
    fome = 0;
    sujo = 0;
    chateado= 0;
    cansado = 0;
}

- (void)comer;
{
    fome = fome - 40;
    if (fome< 0) {
        fome = 0;
    }
}
- (void)dormir;
{
    cansado = cansado - 70;
    if (cansado<0) {
        cansado=0;
    }
}

- (void) banho;
{
    sujo = sujo -80;
    if (sujo<0) {
        sujo = 0;
    }
}

- (void) brincar;
{
    chateado = chateado-40;
    if (chateado<0) {
        chateado = 0;
    }
}
@end









