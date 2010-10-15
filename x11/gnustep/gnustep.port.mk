# $OpenBSD: gnustep.port.mk,v 1.8 2010/10/15 10:37:51 sebastia Exp $

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

MAKE_ENV+=	messages=yes

.ifdef DEBUG
MAKE_ENV+=	debug=yes strip=no
.else
MAKE_ENV+=	debug=no
.endif

MASTER_SITE_GNUSTEP= ftp://ftp.gnustep.org/pub/gnustep/
