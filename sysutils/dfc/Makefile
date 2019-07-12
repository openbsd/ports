# $OpenBSD: Makefile,v 1.11 2019/07/12 20:49:41 sthen Exp $

COMMENT =	display file system space usage using graph and colors

DISTNAME =	dfc-3.1.1
CATEGORIES =	sysutils
REVISION =	0

MASTER_SITES =	https://projects.gw-computing.net/attachments/download/615/
HOMEPAGE =	https://projects.gw-computing.net/projects/dfc

# BSD
PERMIT_PACKAGE=	Yes

MODULES =	devel/cmake
WANTLIB =	c iconv intl m

BUILD_DEPENDS =	devel/gettext,-tools
LIB_DEPENDS =	devel/gettext,-runtime

NO_TEST =	Yes

CONFIGURE_ARGS =-DXDG_CONFIG_DIR=${PREFIX}/share/examples \
		-DMAN_PATH=${PREFIX}/man

.include <bsd.port.mk>
