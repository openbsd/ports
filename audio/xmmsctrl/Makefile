# $OpenBSD: Makefile,v 1.3 2010/08/26 11:17:31 jasper Exp $

COMMENT=	small utility to control XMMS from the command line

DISTNAME=	xmmsctrl-1.9
PKGNAME=	${DISTNAME}p0
CATEGORIES=	audio

HOMEPAGE=	http://www.cs.aau.dk/~adavid/utils/
MASTER_SITES=	${HOMEPAGE}

MAINTAINER=	Gleydson Soares <gsoares@trusted.com.br>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	xmms::audio/xmms
WANTLIB=	X11 Xext Xi c gdk glib gmodule gtk m pthread-stubs xcb

MODULES=	devel/gettext

USE_X11=	Yes
USE_GMAKE=	Yes

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/xmmsctrl ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/xmmsctrl
	${INSTALL_DATA} ${WRKSRC}/samples/* ${PREFIX}/share/examples/xmmsctrl

.include <bsd.port.mk>
