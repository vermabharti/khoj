## [1.3.4] - 2019-03-25 20:02:50

Validate draw order keyframe value is applying values to valid ActorDrawables. We had a condition in Flare that would export null drawOrder values, which would resolve to 0 in binary, causing the keyframe to point to a 0 indexed component. The fix is to both make the runtime library more resilient and to fix the exporter. Both have been done.

## [1.3.3] - 2019-03-12 09:24:20

Added link to Flare-Flutter in README.

## [1.3.2] - 2019-03-07 12:46:33

Split the color from ActorColor and the display color (which can be overriden by the Artboard) into two separate getters so that the animation keyframes don't overwrite the override color.