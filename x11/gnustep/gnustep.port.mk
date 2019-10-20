# $OpenBSD: gnustep.port.mk,v 1.34 2019/10/20 08:03:00 ajacoutot Exp $

# until tested on others
ONLY_FOR_ARCHS ?=	alpha i386 amd64 macppc

CATEGORIES +=	x11/gnustep

USE_GMAKE ?=	Yes
MAKE_FILE ?=	GNUmakefile

BUILD_DEPENDS +=		x11/gnustep/make
MODGNUSTEP_RUN_DEPENDS +=	x11/gnustep/make

COMPILER =		base-clang ports-clang
MODCLANG_ARCHS =	amd64 i386

.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
# Force using ld.bfd, there's a still unknown problem loading Bundles when
# ld.lld is used
CONFIGURE_ENV +=	LDFLAGS="-fuse-ld=bfd"
CONFIGURE_ENV +=	OPTFLAG="${CFLAGS}"
# Another MAKE_FLAGS -fuse-ld=bfd in pdfkit, doesn't pick up MAKE_ENV
MAKE_ENV +=		LDFLAGS="-fuse-ld=bfd"
# Not yet GS_WITH_ARC
#MAKE_FLAGS +=		GS_WITH_ARC=1
MAKE_FLAGS +=		OPTFLAG="${CFLAGS}"
.else
MAKE_FLAGS +=  		CC="${CC}" CPP="${CC} -E" OPTFLAG="${CFLAGS}"
.endif

MAKE_ENV +=	GNUSTEP_MAKEFILES=`gnustep-config --variable=GNUSTEP_MAKEFILES`
MAKE_ENV +=	INSTALL_AS_USER=${BINOWN}
MAKE_ENV +=	INSTALL_AS_GROUP=${BINGRP}
MAKE_ENV +=     GNUSTEP_CONFIG_FILE=${PORTSDIR}/x11/gnustep/GNUstep.conf

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

MASTER_SITE_GNUSTEP = http://ftp.gnustep.org/pub/gnustep/
