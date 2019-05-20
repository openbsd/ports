# $OpenBSD: Makefile,v 1.10 2019/05/20 22:15:23 naddy Exp $

COMMENT =	display file system space usage using graph and colors

DISTNAME =	dfc-3.1.1
CATEGORIES =	sysutils
REVISION =	0

MASTER_SITES =	https://projects.gw-computing.net/attachments/download/615/
HOMEPAGE =	https://projects.gw-computing.net/projects/dfc

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES =	devel/cmake
WANTLIB =	c iconv intl m

BUILD_DEPENDS =	devel/gettext,-tools
LIB_DEPENDS =	devel/gettext,-runtime

NO_TEST =	Yes

CONFIGURE_ARGS =-DXDG_CONFIG_DIR=${PREFIX}/share/examples \
		-DMAN_PATH=${PREFIX}/man

.include <bsd.port.mk>
