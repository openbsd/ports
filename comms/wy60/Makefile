# $OpenBSD: Makefile,v 1.13 2016/10/01 11:54:14 naddy Exp $

COMMENT=	curses-based emulator for the Wyse 60 terminal

DISTNAME=	wy60-2.0.9
REVISION=	0
CATEGORIES=	comms
HOMEPAGE=	https://code.google.com/p/wy60/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_GOOGLECODE:=wy60/}

WANTLIB=	c curses

AUTOCONF_VERSION=2.61
CONFIGURE_STYLE=autoconf

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/wy60
	${INSTALL_DATA} ${WRKSRC}/wy60.rc ${PREFIX}/share/examples/wy60/

.include <bsd.port.mk>
