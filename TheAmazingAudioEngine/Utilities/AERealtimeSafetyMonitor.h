//
//  AERealtimeSafetyMonitor.h
//  TheAmazingAudioEngine
//
//  Created by Michael Tyson on 12/06/2016.
//  Idea by Taylor Holliday
//  Copyright © 2016 A Tasty Pixel. All rights reserved.
//
//  This software is provided 'as-is', without any express or implied
//  warranty.  In no event will the authors be held liable for any damages
//  arising from the use of this software.
//
//  Permission is granted to anyone to use this software for any purpose,
//  including commercial applications, and to alter it and redistribute it
//  freely, subject to the following restrictions:
//
//  1. The origin of this software must not be misrepresented; you must not
//     claim that you wrote the original software. If you use this software
//     in a product, an acknowledgment in the product documentation would be
//     appreciated but is not required.
//
//  2. Altered source versions must be plainly marked as such, and must not be
//     misrepresented as being the original software.
//
//  3. This notice may not be removed or altered from any source distribution.
//

#ifdef DEBUG
// Uncomment the following to enable the realtime safety monitor
// #define REALTIME_SAFETY_MONITOR_ENABLED 1
#endif

#ifdef __OBJC__

#import <pthread.h>

#ifdef __cplusplus
extern "C" {
#endif

/*!
 * Initialize realtime safety monitor
 *
 *  Call this method from the audio thread to initialize the systems that monitor
 *  for non-realtime-thread-safe activities like Objective-C use and memory allocation.
 *
 *  Safe to call multiple times, as implementation is simply a variable assignment.
 *
 * @param audioThread The audio thread
 */
void AERealtimeSafetyMonitorInit(pthread_t audioThread);

/*!
 * Function called when unsafe activity is noticed on the audio thread
 *
 *  Put a breakpoint here to debug.
 */
void AERealtimeSafetyMonitorUnsafeActivityWarning();

#ifdef __cplusplus
}
#endif

#endif
