UIDevice+machineID
===================


Category for UIDevice. Adds a couple of helpful objects to UIDevice including:

1. machineID
2. nodeName
3. systemNameVague
4. codeName
5. isRetina (technically UIScreen but I'll include it here anyway)


Usage instructions:

1. Drag and drop UIDevice+machineID.h and UIDevice+machineID.m into your project.

2. In your view controller ```objective-c #import UIDevice+machineID.h;```

3. In code use:
```objective-c

    NSLog(@"%@",[[UIDevice currentDevice] machineID]);              //Hardware identifier of current device e.g. "iPhone5,1"
    NSLog(@"%@",[[UIDevice currentDevice] nodeName]);               //Name of node within network
    NSLog(@"%@",[[UIDevice currentDevice] systemNameVague]);        //Vague system name. Will probably only ever get to output "Darwin"
    NSLog(@"%@",[[UIDevice currentDevice] codeName]);               //Code name of device e.g. "N41AP"
    NSLog(@"%d",[[UIDevice currentDevice] isRetina]);               //BOOL, returns YES (1) for retina NO (0) for non-retina```

In included sample project these usage examples are demonstrated in main.m

Created by Michael MacCallum on 12/1/12. 

This Software is provided on an "AS IS" basis. I MAKE NO WARRANTIES, EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION THE IMPLIED WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE, REGARDING THE SOFTWARE OR ITS USE AND OPERATION ALONE OR IN COMBINATION WITH YOUR PRODUCTS.

IN NO EVENT SHALL I BE LIABLE FOR ANY SPECIAL, INDIRECT, INCIDENTAL OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) ARISING IN ANY WAY OUT OF THE USE, REPRODUCTION, MODIFICATION AND/OR DISTRIBUTION OF THE SOFTWARE, HOWEVER CAUSED AND WHETHER UNDER THEORY OF CONTRACT, TORT (INCLUDING NEGLIGENCE), STRICT LIABILITY OR OTHERWISE, EVEN IF I HAVE BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

That being said, you are free to use this code free of charge for absoluely anything you want. You may use this in personal projects, commercial projects or for anything else.

Accreditation is not required, but is always appreciated.