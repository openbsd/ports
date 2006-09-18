# $OpenBSD: Makefile,v 1.10 2006/09/18 11:50:40 espie Exp $

COMMENT=	"puzzle game for KDE"

DISTNAME=	kslide-0.90
PKGNAME=	${DISTNAME}p0
CATEGORIES=	games

HOMEPAGE=	http://perso.wanadoo.fr/coquelle/taquin/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=  Yes
PERMIT_PACKAGE_FTP=    Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=  Yes
WANTLIB=	art_lgpl_2 jpeg ICE SM X11 Xext Xrender c m png pthread stdc++ \
		util z iconv idn

MASTER_SITES=	http://david.bieder.free.fr/eric/taquin/ \
		http://perso.wanadoo.fr/coquelle/taquin/
EXTRACT_SUFX=	.tar.bz2

LIB_DEPENDS=	kdecore.>=4,DCOP,kdefx,kdesu,kdeui,kio,kwalletclient::x11/kde/libs3

MODULES=	x11/qt3
MODQT_MT=	Yes

MAKE_ENV=	${CONFIGURE_ENV}
# Ensure qt2 will always be at the front
MAKE_FLAGS=	CXXLD='--tag CXX ${CXX} -L${MODQT_LIBDIR}'

USE_X11=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	 ${MODQT_CONFIGURE_ARGS}
CONFIGURE_ARGS+= --with-extra-libs=${LOCALBASE}/lib
CONFIGURE_ARGS+= --with-extra-includes=${LOCALBASE}/include/libpng:${LOCALBASE}/include
CONFIGURE_ENV=	KDEDIR=${LOCALBASE} 
USE_LIBTOOL=	Yes

MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/admin

WRKDIST=	${WRKDIR}/kslide

.include <bsd.port.mk>
