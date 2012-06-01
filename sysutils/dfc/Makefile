# $OpenBSD: Makefile,v 1.1.1.1 2012/06/01 13:01:45 landry Exp $

COMMENT =	display file system space usage using graph and colors

DISTNAME =	dfc-3.0.0
CATEGORIES =	sysutils

MASTER_SITES =	http://projects.gw-computing.net/attachments/download/63/
HOMEPAGE =	http://projects.gw-computing.net/projects/dfc

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES =	devel/cmake devel/gettext
WANTLIB =	c
NO_REGRESS =	Yes

CONFIGURE_ARGS =-DXDG_CONFIG_DIR=${PREFIX}/share/examples \
		-DMAN_PATH=${PREFIX}/man

.include <bsd.port.mk>
