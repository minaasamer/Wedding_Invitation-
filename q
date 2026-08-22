[1mdiff --git a/java.js b/java.js[m
[1mindex e01d3c8..279a6af 100644[m
[1m--- a/java.js[m
[1m+++ b/java.js[m
[36m@@ -718,79 +718,3 @@[m [masync function capturePhoto() {[m
   });[m
 [m
 })();[m
[31m-[m
[31m-// ================= AUTO SCROLL =================[m
[31m-[m
[31m-window.addEventListener("load", () => {[m
[31m-[m
[31m-    const delay = 5000;[m
[31m-    const duration = 10000;[m
[31m-[m
[31m-    let autoScrolling = false;[m
[31m-    let animationFrame = null;[m
[31m-    let lastTime = null;[m
[31m-[m
[31m-    setTimeout(() => {[m
[31m-[m
[31m-        autoScrolling = true;[m
[31m-[m
[31m-        const start = window.scrollY;[m
[31m-        const target =[m
[31m-            document.documentElement.scrollHeight -[m
[31m-            window.innerHeight;[m
[31m-[m
[31m-        const distance = target - start;[m
[31m-[m
[31m-        function autoScroll(currentTime) {[m
[31m-[m
[31m-            if (!autoScrolling) return;[m
[31m-[m
[31m-            if (lastTime === null) {[m
[31m-                lastTime = currentTime;[m
[31m-            }[m
[31m-[m
[31m-            const delta = currentTime - lastTime;[m
[31m-            lastTime = currentTime;[m
[31m-[m
[31m-            const speed = distance / duration;[m
[31m-            const movement = speed * delta;[m
[31m-[m
[31m-            window.scrollBy(0, movement);[m
[31m-[m
[31m-            if (window.scrollY >= target - 1) {[m
[31m-                autoScrolling = false;[m
[31m-                return;[m
[31m-            }[m
[31m-[m
[31m-            animationFrame =[m
[31m-                requestAnimationFrame(autoScroll);[m
[31m-        }[m
[31m-[m
[31m-        animationFrame =[m
[31m-            requestAnimationFrame(autoScroll);[m
[31m-[m
[31m-    }, delay);[m
[31m-[m
[31m-[m
[31m-    function stopAutoScroll() {[m
[31m-[m
[31m-        autoScrolling = false;[m
[31m-[m
[31m-        if (animationFrame) {[m
[31m-            cancelAnimationFrame(animationFrame);[m
[31m-            animationFrame = null;[m
[31m-        }[m
[31m-[m
[31m-        lastTime = null;[m
[31m-    }[m
[31m-[m
[31m-[m
[31m-    window.addEventListener("touchstart", stopAutoScroll, {[m
[31m-        passive: true[m
[31m-    });[m
[31m-[m
[31m-    window.addEventListener("wheel", stopAutoScroll, {[m
[31m-        passive: true[m
[31m-    });[m
[31m-[m
[31m-});[m
\ No newline at end of file[m
