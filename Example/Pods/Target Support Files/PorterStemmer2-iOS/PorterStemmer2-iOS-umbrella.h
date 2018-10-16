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

#import "libstemmer.h"
#import "modules.h"
#import "api.h"
#import "header.h"
#import "stem_ISO_8859_1_danish.h"
#import "stem_ISO_8859_1_dutch.h"
#import "stem_ISO_8859_1_english.h"
#import "stem_ISO_8859_1_finnish.h"
#import "stem_ISO_8859_1_french.h"
#import "stem_ISO_8859_1_german.h"
#import "stem_ISO_8859_1_italian.h"
#import "stem_ISO_8859_1_norwegian.h"
#import "stem_ISO_8859_1_porter.h"
#import "stem_ISO_8859_1_portuguese.h"
#import "stem_ISO_8859_1_spanish.h"
#import "stem_ISO_8859_1_swedish.h"
#import "stem_ISO_8859_2_hungarian.h"
#import "stem_ISO_8859_2_romanian.h"
#import "stem_KOI8_R_russian.h"
#import "stem_UTF_8_danish.h"
#import "stem_UTF_8_dutch.h"
#import "stem_UTF_8_english.h"
#import "stem_UTF_8_finnish.h"
#import "stem_UTF_8_french.h"
#import "stem_UTF_8_german.h"
#import "stem_UTF_8_hungarian.h"
#import "stem_UTF_8_italian.h"
#import "stem_UTF_8_norwegian.h"
#import "stem_UTF_8_porter.h"
#import "stem_UTF_8_portuguese.h"
#import "stem_UTF_8_romanian.h"
#import "stem_UTF_8_russian.h"
#import "stem_UTF_8_spanish.h"
#import "stem_UTF_8_swedish.h"
#import "stem_UTF_8_turkish.h"

FOUNDATION_EXPORT double PorterStemmer2VersionNumber;
FOUNDATION_EXPORT const unsigned char PorterStemmer2VersionString[];

