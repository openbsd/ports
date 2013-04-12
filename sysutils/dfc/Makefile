# $OpenBSD: Makefile,v 1.4 2013/04/12 10:22:32 benoit Exp $

COMMENT =	display file system space usage using graph and colors

DISTNAME =	dfc-3.0.2
CATEGORIES =	sysutils

MASTER_SITES =	http://projects.gw-computing.net/attachments/download/68/
HOMEPAGE =	http://projects.gw-computing.net/projects/dfc

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES =	devel/cmake devel/gettext
WANTLIB =	c
NO_TEST =	Yes

CONFIGURE_ARGS =-DXDG_CONFIG_DIR=${PREFIX}/share/examples \
		-DMAN_PATH=${PREFIX}/man

.include <bsd.port.mk>
