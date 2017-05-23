# $OpenBSD: Makefile,v 1.8 2017/05/23 09:39:48 benoit Exp $

COMMENT =	display file system space usage using graph and colors

DISTNAME =	dfc-3.1.0
CATEGORIES =	sysutils
REVISION =	0

MASTER_SITES =	https://projects.gw-computing.net/attachments/download/614/
HOMEPAGE =	https://projects.gw-computing.net/projects/dfc

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES =	devel/cmake devel/gettext
WANTLIB =	c m
NO_TEST =	Yes

CONFIGURE_ARGS =-DXDG_CONFIG_DIR=${PREFIX}/share/examples \
		-DMAN_PATH=${PREFIX}/man

.include <bsd.port.mk>
