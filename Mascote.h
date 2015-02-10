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
}
- (instancetype) initWithVida : (int)v andEnergia : (int)e;
- (int) acessoVida;
- (int) acessoEnergia;
- (void) imprimaVida;
- (void) imprimaEnergia;
- (int)nivel;

@end
