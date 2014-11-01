# $OpenBSD: Makefile,v 1.6 2014/11/01 22:45:06 benoit Exp $

COMMENT =	display file system space usage using graph and colors

DISTNAME =	dfc-3.0.5
CATEGORIES =	sysutils

MASTER_SITES =	http://projects.gw-computing.net/attachments/download/467/
HOMEPAGE =	http://projects.gw-computing.net/projects/dfc

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES =	devel/cmake devel/gettext
WANTLIB =	c
NO_TEST =	Yes

CONFIGURE_ARGS =-DXDG_CONFIG_DIR=${PREFIX}/share/examples \
		-DMAN_PATH=${PREFIX}/man

.include <bsd.port.mk>
