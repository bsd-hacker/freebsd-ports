--- gavl/mix.c.orig	Sun Aug 29 21:27:05 2004
+++ gavl/mix.c	Sun Aug 29 21:29:27 2004
@@ -31,6 +31,17 @@
  */
 
 /* If we have more output- than input channels */
+#include <machine/limits.h>
+
+#ifndef INT8_MAX
+#define INT8_MAX       INT_MAX
+#endif
+#ifndef INT16_MAX
+#define INT16_MAX      SHRT_MAX
+#endif
+#ifndef INT32_MAX
+#define INT32_MAX      LONG_MAX
+#endif
 
 #define FRONT_TO_REAR     1.0
 #define FRONT_TO_CENTER   1.0
