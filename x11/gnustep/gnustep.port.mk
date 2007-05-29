# $OpenBSD: gnustep.port.mk,v 1.1.1.1 2007/05/29 02:59:11 ajacoutot Exp $

SHARED_ONLY=	Yes

USE_X11=	Yes
USE_GMAKE=	Yes

BUILD_DEPENDS+=	:gnustep-make-*:x11/gnustep/make
RUN_DEPENDS+=	${BUILD_DEPENDS}

MAKE_FLAGS+=	CC="${CC}" CPP="${CC} -E" OPTFLAG="${CFLAGS}"

MAKE_ENV+=	GNUSTEP_MAKEFILES=`gnustep-config --variable=GNUSTEP_MAKEFILES`
MAKE_ENV+=	INSTALL_AS_USER=${BINOWN}
MAKE_ENV+=	INSTALL_AS_GROUP=${BINGRP}

MAKE_ENV+=	messages=yes
MAKE_ENV+=	debug=no
