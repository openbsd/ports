# $OpenBSD: Makefile,v 1.1.1.1 2001/10/30 03:05:09 kevlo Exp $

COMMENT=	"puzzle game for KDE"

DISTNAME=	kslide-0.83
CATEGORIES=	games
NEED_VERSION=	1.488

HOMEPAGE=	http://perso.wanadoo.fr/coquelle/taquin/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=  Yes
PERMIT_PACKAGE_FTP=    Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=  Yes

MASTER_SITES=	http://www.web-xs.de/users/ecoquelle/taquin/
EXTRACT_SUFX=	.tar.bz2

BUILD_DEPENDS=	::x11/qt2-designer

LIB_DEPENDS=	kdecore.3,DCOP,kdeui,kfile,ksycoca,kio,kdesu,kssl::x11/kde/libs2

MODULES=	qt2

MAKE_ENV=	${CONFIGURE_ENV}
# Ensure qt2 will always be at the front
MAKE_FLAGS=	CXXLD='--tag CXX ${CXX} -L${MODQT_LIBDIR}'

USE_X11=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	 ${MODQT_CONFIGURE_ARGS}
CONFIGURE_ARGS+= --with-extra-libs=${LOCALBASE}/lib
CONFIGURE_ARGS+= --with-extra-includes=${LOCALBASE}/include
CONFIGURE_ENV=	KDEDIR=${LOCALBASE} 

MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/admin

.include <bsd.port.mk>
