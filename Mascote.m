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
        
        if (energia<=100)
            energia =e;
        else
        {
            if (energia<0)
            {
                energia= 0;
            }
            else
                energia =100;
        }
            
        if (vida<=7)
               vida = v;
        else
        {
                if (vida<0)
                {
                   vida =0;
                }
                else
                    vida = 7;
        }

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

- (void) imprimaVida
{
    NSLog(@"vida = %i",vida);
}

- (void) imprimaEnergia;
{
     NSLog(@"energia = %i",energia);
}

- (int)nivel: (NSString *)comando;

@end
