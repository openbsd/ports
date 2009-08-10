# $OpenBSD: Makefile,v 1.11 2009/08/10 06:33:02 kili Exp $

COMMENT=	task-based timeclock for KDE

VERSION=	2.0.2
DISTNAME=	ktimeclock-${VERSION}
PKGNAME=	${DISTNAME}p2
CATEGORIES=	misc x11

HOMEPAGE=	http://www.howlingfrog.com/opensource/ktimeclock/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=  Yes
PERMIT_PACKAGE_FTP=    Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=  Yes

WANTLIB=	art_lgpl_2 jpeg kwalletclient ICE SM X11 Xau Xdmcp Xext \
		Xrender c m png pthread stdc++ util z idn fam rpcsvc \
		pthread-stubs xcb

MASTER_SITES=	${HOMEPAGE}/downloads/v${VERSION}/tarball/

LIB_DEPENDS=	kdecore.>=4,DCOP,kdefx,kdesu,kdeui,kio::x11/kde/libs3

MODULES=	x11/qt3 devel/gettext
MODQT_MT=	Yes

PORTHOME=	${WRKDIR}

MAKE_ENV=	KDEDIR="${LOCALBASE}"
# Ensure qt2 will always be at the front
MAKE_FLAGS=	CXXLD='--tag CXX ${CXX} -L${MODQT_LIBDIR}'

USE_X11=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	 ${MODQT_CONFIGURE_ARGS}
CONFIGURE_ARGS+= --disable-debug --enable-final
CONFIGURE_ARGS+= --with-extra-libs="${LOCALBASE}/lib"
CONFIGURE_ARGS+= --with-extra-includes="${LOCALBASE}/include/libpng:${LOCALBASE}/include"
CONFIGURE_ARGS+= --with-xinerama
CONFIGURE_ENV=	KDEDIR="${LOCALBASE}"
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/admin
USE_LIBTOOL=	Yes

.include <bsd.port.mk>
