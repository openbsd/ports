# $OpenBSD: Makefile,v 1.47 2019/07/12 20:46:04 sthen Exp $

COMMENT =	easy to use, graphical editor

DISTNAME =	cooledit-3.17.17
REVISION =	4

CATEGORIES =	editors

HOMEPAGE =	ftp://ftp.ibiblio.org/pub/Linux/apps/editors/X/cooledit/

SHARED_LIBS =	Cw	1.0

MAINTAINER =	Marc Espie <espie@openbsd.org>

FLAVORS =	python
FLAVOR ?=

WANTLIB =	X11 c iconv intl util xcb

MASTER_SITES =	http://fossies.org/linux/misc/

.if ${FLAVOR:Mpython}
MODULES +=	lang/python
LIB_DEPENDS +=	${MODPY_LIB_DEPENDS}
CONFIGURE_ENV += PYTHON_VER=${MODPY_VERSION} LOCALBASE=${LOCALBASE}
WANTLIB +=	pthread m ${MODPY_WANTLIB}
.else
CONFIGURE_ENV +=NOPYTHON=Yes
.endif

BUILD_DEPENDS += devel/gettext,-tools
LIB_DEPENDS +=	devel/gettext,-runtime

CONFIGURE_STYLE = gnu
CONFIGURE_ENV += XTERM_CMD=xterm LDFLAGS="-L${LOCALBASE}/lib"

CONFIGURE_ARGS += --enable-static --disable-mail-author

# GPLv2+
PERMIT_PACKAGE =	Yes

.include <bsd.port.mk>
