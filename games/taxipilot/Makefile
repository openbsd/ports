# $OpenBSD: Makefile,v 1.14 2009/08/10 06:31:42 kili Exp $

COMMENT=	silly little game based on Spacetaxi for the C64

DISTNAME=	taxipilot-0.7.2
PKGNAME=	${DISTNAME}p2
CATEGORIES=	games

HOMEPAGE=	http://taxipilot.sourceforge.net/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=  Yes
PERMIT_PACKAGE_FTP=    Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=  Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xext Xrender art_lgpl_2 c fam idn jpeg \
		m png pthread pthread-stubs rpcsvc stdc++ util xcb z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=taxipilot/}

LIB_DEPENDS=	kdecore.>=4,DCOP,kdecore,kdefx,kdesu,kdeui,kio,kwalletclient::x11/kde/libs3

MODULES=	x11/qt3 devel/gettext
MODQT_MT=	Yes

PORTHOME=	${WRKDIR}

MAKE_ENV=	${CONFIGURE_ENV}
# Ensure Qt3 will always be at the front
MAKE_FLAGS=	CXXLD='--tag CXX ${CXX} -L${MODQT_LIBDIR}'

USE_LIBTOOL=	Yes
USE_X11=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	 ${MODQT_CONFIGURE_ARGS}
CONFIGURE_ARGS+= --with-extra-libs=${LOCALBASE}/lib
CONFIGURE_ARGS+= --with-extra-includes=${LOCALBASE}/include/libpng:${LOCALBASE}/include
CONFIGURE_ENV=	KDEDIR=${LOCALBASE} 
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/admin

NO_REGRESS=	Yes

.include <bsd.port.mk>
