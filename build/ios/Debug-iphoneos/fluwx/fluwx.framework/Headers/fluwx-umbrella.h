#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "FluwxPlugin.h"
#import "FluwxShareHandler.h"

FOUNDATION_EXPORT double fluwxVersionNumber;
FOUNDATION_EXPORT const unsigned char fluwxVersionString[];

