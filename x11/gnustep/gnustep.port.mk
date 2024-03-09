# until tested on others
ONLY_FOR_ARCHS ?=	${LLD_ARCHS}

USE_NOBTCFI-aarch64= Yes
# Program terminated with signal SIGILL, Illegal instruction.
# #0  -[NSBundle release] (self=0x14704af2d8, _cmd=<optimized out>) at NSBundle.m:2057
# #1  0x0000001565473cbc in release(objc_object*) () from /usr/local/lib/libobjc2.so.3.0
# #2  0x0000001565473ac8 [PAC] in emptyPool(arc_tls*, void*) () from /usr/local/lib/libobjc2.so.3.0
# #3  0x0000001565473938 [PAC] in objc_autoreleasePoolPop () from /usr/local/lib/libobjc2.so.3.0
# #4  0x0000001496a7553c [PAC] in -[NSAutoreleasePool dealloc] (self=0x15300e4788, _cmd=0x1496d7b7b8 <objc_selector_list+32>) at NSAutoreleasePool.m:571
# #5  0x00000014e4ff4f3c [PAC] in ?? () from /usr/local/lib/libgnustep-gui.so.0.32
# #6  0x00000014e4ff4414 [PAC] in ?? () from /usr/local/lib/libgnustep-gui.so.0.32
# #7  0x00000014e4fd085c [PAC] in NSApplicationMain () from /usr/local/lib/libgnustep-gui.so.0.32
# #8  0x0000001067d334ec [PAC] in _start ()

CATEGORIES +=	x11/gnustep

USE_GMAKE ?=	Yes
MAKE_FILE ?=	GNUmakefile

BUILD_DEPENDS +=		x11/gnustep/make
MODGNUSTEP_RUN_DEPENDS +=	x11/gnustep/make

COMPILER =		base-clang

CONFIGURE_ENV +=	OPTFLAG="${CFLAGS}"
# Not yet GS_WITH_ARC
#MAKE_FLAGS +=		GS_WITH_ARC=1
MAKE_FLAGS +=		OPTFLAG="${CFLAGS}"

MAKE_ENV +=	GNUSTEP_MAKEFILES=`gnustep-config --variable=GNUSTEP_MAKEFILES`
MAKE_ENV +=	INSTALL_AS_USER=${BINOWN}
MAKE_ENV +=	INSTALL_AS_GROUP=${BINGRP}
MAKE_ENV +=	GNUSTEP_CONFIG_FILE=${PORTSDIR}/x11/gnustep/GNUstep.conf

MODGNUSTEP_IS_FRAMEWORK ?=	No
MODGNUSTEP_NEEDS_C ?=		Yes

.if ${MODGNUSTEP_IS_FRAMEWORK:L} == yes
BUILD_DEPENDS +=		x11/gnustep/base
MODGNUSTEP_RUN_DEPENDS +=	x11/gnustep/base
MODGNUSTEP_NEEDS_BASE ?=	No
MODGNUSTEP_NEEDS_GUI ?=		No
MODGNUSTEP_NEEDS_BACK ?=	No
.else
MODGNUSTEP_NEEDS_BASE ?=	Yes
MODGNUSTEP_NEEDS_GUI ?=		Yes
MODGNUSTEP_NEEDS_BACK ?=	Yes
.endif

.if ${MODGNUSTEP_NEEDS_GUI:L} == yes
MODGNUSTEP_WANTLIB +=		gnustep-base gnustep-gui
MODGNUSTEP_LIB_DEPENDS +=	x11/gnustep/gui
.  if ${MODGNUSTEP_NEEDS_C:L} == yes
MODGNUSTEP_WANTLIB +=		c
.  endif
.  if ${MODGNUSTEP_NEEDS_BACK:L} == yes
MODGNUSTEP_RUN_DEPENDS +=	x11/gnustep/back
.  endif
.endif
.if ${MODGNUSTEP_NEEDS_BASE:L} == yes
MODGNUSTEP_WANTLIB +=		objc2 m
MODGNUSTEP_WANTLIB +=		gnustep-base pthread
MODGNUSTEP_LIB_DEPENDS +=	x11/gnustep/base
.endif

WANTLIB += ${MODGNUSTEP_WANTLIB}
LIB_DEPENDS += ${MODGNUSTEP_LIB_DEPENDS}
RUN_DEPENDS += ${MODGNUSTEP_RUN_DEPENDS}

MAKE_ENV +=	messages=yes

.ifdef DEBUG
CONFIGURE_ARGS +=       --enable-debug --disable-strip
MAKE_ENV +=	debug=yes strip=no
.else
CONFIGURE_ARGS +=       --disable-debug --enable-strip
MAKE_ENV +=	debug=no strip=yes
.endif

SITE_GNUSTEP = http://ftp.gnustep.org/pub/gnustep/
