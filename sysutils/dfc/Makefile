# $OpenBSD: Makefile,v 1.9 2017/11/12 16:00:15 bcallah Exp $

COMMENT =	display file system space usage using graph and colors

DISTNAME =	dfc-3.1.1
CATEGORIES =	sysutils

MASTER_SITES =	https://projects.gw-computing.net/attachments/download/615/
HOMEPAGE =	https://projects.gw-computing.net/projects/dfc

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES =	devel/cmake
WANTLIB =	c iconv intl m

BUILD_DEPENDS =	devel/gettext-tools
LIB_DEPENDS =	devel/gettext

NO_TEST =	Yes

CONFIGURE_ARGS =-DXDG_CONFIG_DIR=${PREFIX}/share/examples \
		-DMAN_PATH=${PREFIX}/man

.include <bsd.port.mk>
