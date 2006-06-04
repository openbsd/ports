# $OpenBSD: Makefile,v 1.2 2006/06/04 14:30:29 alek Exp $

COMMENT=	"open source clone of the game Transport Tycoon Deluxe"
DISTNAME=	openttd-0.4.7-source
PKGNAME=	${DISTNAME:S/-source//}
EXTRACT_SUFX=	.tar.bz2
CATEGORIES=	games

HOMEPAGE=	http://www.openttd.com/

MAINTAINER=	Michael Knudsen <mk@molioner.dk>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext c m pthread usbhid z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=openttd/}

LIB_DEPENDS=		SDL::devel/sdl \
			png.2::graphics/png

MAKE_ENV+=		WITH_ZLIB=1 WITH_PNG=1 INSTALL=1 VERBOSE=1 \
			DATA_DIR=share/openttd \
			ICON_DIR=share/pixmaps \
			BINARY_DIR=bin \
			PERSONAL_DIR=.openttd \
			USE_HOMEDIR=1

USE_X11=		Yes
USE_GMAKE=		Yes
NO_REGRESS=		Yes

WRKDIST=		${WRKDIR}/${DISTNAME:S/-source//}

DOCSDIR=		${PREFIX}/share/doc/openttd
EXAMPLESDIR=		${PREFIX}/share/examples/openttd
GAMEDIR=		${PREFIX}/share/openttd

post-install:
	${INSTALL_DATA_DIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/docs/* ${DOCSDIR}
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/scripts/* ${EXAMPLESDIR}
	${INSTALL_DATA_DIR} ${GAMEDIR}
	${INSTALL_DATA_DIR} ${GAMEDIR}/media
	${INSTALL_DATA} ${WRKSRC}/media/* ${GAMEDIR}/media
	
.include <bsd.port.mk>
