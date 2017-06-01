#import "Simple.h"
#import "PINFuture.h"

@implementation Simple

+(void)beSimple
{
  __auto_type future = [PINFuture<NSString *> withValue:@"Hello world"];
  [future executeOnMainSuccess:^(NSString * _Nonnull value) {
      NSLog(@"%@", value);
  } failure:nil];
}

@end

