# $OpenBSD: Makefile,v 1.41 2013/08/09 18:45:32 ajacoutot Exp $

COMMENT =	easy to use, graphical editor

DISTNAME =	cooledit-3.17.17
REVISION =	0

CATEGORIES =	editors

HOMEPAGE =	ftp://ftp.ibiblio.org/pub/Linux/apps/editors/X/cooledit/

SHARED_LIBS =	Cw	1.0

MAINTAINER =	Marc Espie <espie@openbsd.org>

FLAVORS =	python
FLAVOR ?=

WANTLIB =	X11 c util xcb

MASTER_SITES =	http://fossies.org/linux/misc/

.if ${FLAVOR:Mpython}
MODULES +=	lang/python
LIB_DEPENDS +=	${MODPY_LIB_DEPENDS}
CONFIGURE_ENV += PYTHON_VER=${MODPY_VERSION} LOCALBASE=${LOCALBASE}
WANTLIB +=	pthread m ${MODPY_WANTLIB}
.else
CONFIGURE_ENV +=NOPYTHON=Yes
.endif

MODULES +=	devel/gettext
USE_GROFF =	Yes

CONFIGURE_STYLE = gnu
CONFIGURE_ENV += XTERM_CMD=xterm LDFLAGS="-L${LOCALBASE}/lib"

CONFIGURE_ARGS += ${CONFIGURE_SHARED}
CONFIGURE_ARGS += --enable-static --disable-mail-author

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

.include <bsd.port.mk>
