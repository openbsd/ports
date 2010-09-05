# $OpenBSD: Makefile,v 1.4 2010/09/05 22:00:14 sthen Exp $

COMMENT=	small utility to control XMMS from the command line

DISTNAME=	xmmsctrl-1.9
REVISION=	1
CATEGORIES=	audio

HOMEPAGE=	http://www.cs.aau.dk/~adavid/utils/
MASTER_SITES=	${HOMEPAGE}

MAINTAINER=	Gleydson Soares <gsoares@trusted.com.br>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	::audio/xmms
WANTLIB=	X11 Xext Xi c gdk glib gmodule gtk m xmms

MODULES=	devel/gettext

USE_X11=	Yes
USE_GMAKE=	Yes

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/xmmsctrl ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/xmmsctrl
	${INSTALL_DATA} ${WRKSRC}/samples/* ${PREFIX}/share/examples/xmmsctrl

.include <bsd.port.mk>
