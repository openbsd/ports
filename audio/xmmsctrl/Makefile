# $OpenBSD: Makefile,v 1.10 2014/10/22 13:44:44 jasper Exp $

COMMENT=	small utility to control XMMS from the command line

DISTNAME=	xmmsctrl-1.9
REVISION=	4
CATEGORIES=	audio

HOMEPAGE=	http://www.cs.aau.dk/~adavid/utils/
MASTER_SITES=	${HOMEPAGE}

MAINTAINER=	Gleydson Soares <gsoares@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

LIB_DEPENDS=	audio/xmms
WANTLIB=	X11 Xext Xi c gdk glib gmodule gtk m xmms

MODULES=	devel/gettext

USE_GMAKE=	Yes

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/xmmsctrl ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/xmmsctrl
	${INSTALL_DATA} ${WRKSRC}/samples/* ${PREFIX}/share/examples/xmmsctrl

.include <bsd.port.mk>
