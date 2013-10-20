# $OpenBSD: Makefile,v 1.5 2013/10/20 13:18:02 benoit Exp $

COMMENT =	display file system space usage using graph and colors

DISTNAME =	dfc-3.0.4
CATEGORIES =	sysutils

MASTER_SITES =	http://projects.gw-computing.net/attachments/download/79/
HOMEPAGE =	http://projects.gw-computing.net/projects/dfc

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES =	devel/cmake devel/gettext
WANTLIB =	c
NO_TEST =	Yes

CONFIGURE_ARGS =-DXDG_CONFIG_DIR=${PREFIX}/share/examples \
		-DMAN_PATH=${PREFIX}/man

.include <bsd.port.mk>
