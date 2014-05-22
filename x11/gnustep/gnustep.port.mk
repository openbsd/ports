# $OpenBSD: gnustep.port.mk,v 1.22 2014/05/22 09:48:56 sebastia Exp $

# until tested on others
ONLY_FOR_ARCHS ?=	i386 amd64 macppc

SHARED_ONLY =	Yes

CATEGORIES +=	x11/gnustep

USE_GMAKE ?=	Yes
MAKE_FILE ?=	GNUmakefile

MODULES +=			lang/clang
BUILD_DEPENDS +=		x11/gnustep/make
MODGNUSTEP_RUN_DEPENDS +=	x11/gnustep/make

MODCLANG_ARCHS =		amd64 i386
MODCLANG_LANGS =		c++

.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
CONFIGURE_ENV +=	CC="clang" CXX="clang++" CPP="clang -E"
CONFIGURE_ENV +=	OPTFLAG="${CFLAGS}"
MAKE_FLAGS +=		CC="clang" CXX="clang++" CPP="clang -E"
MAKE_FLAGS +=		OPTFLAG="${CFLAGS}"
.else
MAKE_FLAGS +=  		CC="${CC}" CPP="${CC} -E" OPTFLAG="${CFLAGS}"
.endif

MAKE_ENV +=	GNUSTEP_MAKEFILES=`gnustep-config --variable=GNUSTEP_MAKEFILES`
MAKE_ENV +=	INSTALL_AS_USER=${BINOWN}
MAKE_ENV +=	INSTALL_AS_GROUP=${BINGRP}
MAKE_ENV +=     GNUSTEP_CONFIG_FILE=${PORTSDIR}/x11/gnustep/GNUstep.conf

MODGNUSTEP_IS_FRAMEWORK ?=	No
MODGNUSTEP_NEEDS_LIBICONV ?=	Yes
MODGNUSTEP_NEEDS_C ?=		Yes

.if ${MODGNUSTEP_IS_FRAMEWORK:L} == yes
BUILD_DEPENDS +=		x11/gnustep/base
MODGNUSTEP_RUN_DEPENDS +=	x11/gnustep/base
MODGNUSTEP_NEEDS_BASE ?=	No
MODGNUSTEP_NEEDS_GUI ?=		No
MODGNUSTEP_NEEDS_BACK ?=	No
.else
.  if ${MODGNUSTEP_NEEDS_LIBICONV:L} == yes
MODULES +=			converters/libiconv
MODGNUSTEP_WANTLIB +=		${MODLIBICONV_WANTLIB}
.  endif
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
MODGNUSTEP_WANTLIB +=		objc2 avahi-client avahi-common ffi gcrypt gmp
MODGNUSTEP_WANTLIB +=		gnutls icudata icui18n icuuc xml2 xslt z m
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

MASTER_SITE_GNUSTEP = ftp://ftp.gnustep.org/pub/gnustep/
