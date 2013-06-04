# $OpenBSD: Makefile,v 1.20 2013/06/04 18:41:52 naddy Exp $

COMMENT=	task-based timeclock for KDE

VERSION=	2.0.2
DISTNAME=	ktimeclock-${VERSION}
REVISION=	4
CATEGORIES=	misc x11

HOMEPAGE=	http://www.howlingfrog.com/opensource/ktimeclock/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=  Yes

WANTLIB=	art_lgpl_2 kwalletclient ICE SM X11 Xext \
		Xrender c m png pthread stdc++ util z idn fam \
		xcb kdecore DCOP kdefx kdesu kdeui kio \
		Xfixes Xt expat fontconfig freetype

MASTER_SITES=	${HOMEPAGE}/downloads/v${VERSION}/tarball/

LIB_DEPENDS=	x11/kde/libs3

MODULES=	x11/qt3 devel/gettext

PORTHOME=	${WRKDIR}

MAKE_ENV=	KDEDIR="${LOCALBASE}"
# Ensure qt3 will always be at the front
MAKE_FLAGS=	CXXLD='--tag CXX ${CXX} -L${MODQT_LIBDIR}'

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	 ${MODQT_CONFIGURE_ARGS}
CONFIGURE_ARGS+= --disable-debug --enable-final
CONFIGURE_ARGS+= --with-extra-libs="${LOCALBASE}/lib"
CONFIGURE_ARGS+= --with-extra-includes="${LOCALBASE}/include"
CONFIGURE_ARGS+= --with-xinerama
CONFIGURE_ENV=	KDEDIR="${LOCALBASE}"
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/admin

.include <bsd.port.mk>
