# $OpenBSD: Makefile,v 1.3 2013/03/11 11:41:29 espie Exp $

COMMENT =	display file system space usage using graph and colors

DISTNAME =	dfc-3.0.1
CATEGORIES =	sysutils

MASTER_SITES =	http://projects.gw-computing.net/attachments/download/67/
HOMEPAGE =	http://projects.gw-computing.net/projects/dfc

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES =	devel/cmake devel/gettext
WANTLIB =	c
NO_TEST =	Yes

CONFIGURE_ARGS =-DXDG_CONFIG_DIR=${PREFIX}/share/examples \
		-DMAN_PATH=${PREFIX}/man

.include <bsd.port.mk>
