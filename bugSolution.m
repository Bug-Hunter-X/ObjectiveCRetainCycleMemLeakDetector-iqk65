To solve the retain cycle, modify one of the classes to use a `weak` reference:

```objectivec
@interface MyClass : NSObject
@property (nonatomic, weak) AnotherClass *anotherObject; // Changed to weak
@end

@interface AnotherClass : NSObject
@property (nonatomic, strong) MyClass *myObject;
@end

@implementation MyClass
// ...
@end

@implementation AnotherClass
// ...
@end
```

By making the reference in `MyClass` weak, the `anotherObject` does not prevent deallocation of `AnotherClass`. This breaks the cycle and resolves the memory leak.  Remember that a weak reference does not retain the object, it only points to it. It will become nil once the object is deallocated.