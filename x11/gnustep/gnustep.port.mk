# $OpenBSD: gnustep.port.mk,v 1.9 2010/10/26 12:39:10 sebastia Exp $

# until tested on others
ONLY_FOR_ARCHS=	i386 amd64

SHARED_ONLY=	Yes

CATEGORIES+=	x11/gnustep

USE_GMAKE?=	Yes
MAKE_FILE?=	GNUmakefile

BUILD_DEPENDS+=	:gnustep-make-*:x11/gnustep/make
RUN_DEPENDS+=	:gnustep-make-*:x11/gnustep/make

MAKE_FLAGS+=	CC="${CC}" CPP="${CC} -E" OPTFLAG="${CFLAGS}"

MAKE_ENV+=	GNUSTEP_MAKEFILES=`gnustep-config --variable=GNUSTEP_MAKEFILES`
MAKE_ENV+=	INSTALL_AS_USER=${BINOWN}
MAKE_ENV+=	INSTALL_AS_GROUP=${BINGRP}
MAKE_ENV+=	GS_DEFAULTS_LOCKDIR=${WRKDIR}

MODGNUSTEP_NEEDS_BASE?=	Yes
MODGNUSTEP_NEEDS_GUI?=	Yes
MODGNUSTEP_NEEDS_BACK?=	Yes
.if ${MODGNUSTEP_NEEDS_GUI} == Yes 
WANTLIB+=	gnustep-gui
LIB_DEPENDS+=	::x11/gnustep/gui
.if ${MODGNUSTEP_NEEDS_BACK} == Yes
RUN_DEPENDS+=	::x11/gnustep/back
.endif
.endif
.if ${MODGNUSTEP_NEEDS_BASE} == Yes
WANTLIB+=	objc gnustep-base
LIB_DEPENDS+=	::x11/gnustep/base
.endif

MAKE_ENV+=	messages=yes

.ifdef DEBUG
MAKE_ENV+=	debug=yes strip=no
.else
MAKE_ENV+=	debug=no
.endif

MASTER_SITE_GNUSTEP= ftp://ftp.gnustep.org/pub/gnustep/
