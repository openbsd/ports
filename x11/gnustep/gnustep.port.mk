# $OpenBSD: gnustep.port.mk,v 1.11 2010/11/22 08:36:59 espie Exp $

# until tested on others
ONLY_FOR_ARCHS =	i386 amd64

SHARED_ONLY =	Yes

CATEGORIES +=	x11/gnustep

USE_GMAKE ?=	Yes
MAKE_FILE ?=	GNUmakefile

BUILD_DEPENDS +=		x11/gnustep/make
MODGNUSTEP_RUN_DEPENDS +=	x11/gnustep/make

MAKE_FLAGS +=	CC="${CC}" CPP="${CC} -E" OPTFLAG="${CFLAGS}"

MAKE_ENV +=	GNUSTEP_MAKEFILES=`gnustep-config --variable=GNUSTEP_MAKEFILES`
MAKE_ENV +=	INSTALL_AS_USER=${BINOWN}
MAKE_ENV +=	INSTALL_AS_GROUP=${BINGRP}
MAKE_ENV +=	GS_DEFAULTS_LOCKDIR=${WRKDIR}

MODGNUSTEP_NEEDS_BASE ?=	Yes
MODGNUSTEP_NEEDS_GUI ?=		Yes
MODGNUSTEP_NEEDS_BACK ?=	Yes

.if ${MODGNUSTEP_NEEDS_GUI:L} == yes 
MODGNUSTEP_WANTLIB +=		gnustep-gui
MODGNUSTEP_LIB_DEPENDS +=	x11/gnustep/gui
.  if ${MODGNUSTEP_NEEDS_BACK:L} == yes
MODGNUSTEP_RUN_DEPENDS +=	x11/gnustep/back
.  endif
.endif
.if ${MODGNUSTEP_NEEDS_BASE:L} == yes
MODGNUSTEP_WANTLIB +=		objc gnustep-base
MODGNUSTEP_LIB_DEPENDS +=	x11/gnustep/base
.endif

WANTLIB += ${MODGNUSTEP_WANTLIB}
LIB_DEPENDS += ${MODGNUSTEP_LIB_DEPENDS}
RUN_DEPENDS += ${MODGNUSTEP_RUN_DEPENDS}

MAKE_ENV +=	messages=yes

.ifdef DEBUG
MAKE_ENV +=	debug=yes strip=no
.else
MAKE_ENV +=	debug=no
.endif

MASTER_SITE_GNUSTEP = ftp://ftp.gnustep.org/pub/gnustep/
