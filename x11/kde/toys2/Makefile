# $OpenBSD: Makefile,v 1.8 2001/08/21 10:59:38 espie Exp $

COMMENT=	"some useless kde applications"

CATEGORIES=		x11 x11/kde games
NEED_VERSION=	1.402
VERSION=		2.2
DISTNAME=		kdetoys-${VERSION}
DIST_SUBDIR=		kde

MASTER_SITES=	${MASTER_SITE_KDE}
MASTER_SITE_SUBDIR=	stable/${VERSION}/src/
EXTRACT_SUFX=		.tar.bz2

LIB_DEPENDS=	kdecore.3.::x11/kde/libs2

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-qt-includes=${LOCALBASE}/include/X11/qt2
CONFIGURE_ARGS+=	--with-qt-libraries=${LOCALBASE}/lib/qt2
CONFIGURE_ARGS+=	--with-extra-libs=${LOCALBASE}/lib
CONFIGURE_ARGS+=	--with-extra-includes=${LOCALBASE}/include
#CONFIGURE_ARGS+=--enable-static --enable-debug --disable-shared

# Not yet, too much time to compile
#CONFIGURE_ARGS+=	--enable-static
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}

USE_GMAKE=		Yes
CONFIGURE_ENV=		MOC=${LOCALBASE}/bin/moc2 \
	RUN_KAPPFINDER=no KDEDIR=${LOCALBASE}
MAKE_ENV=		${CONFIGURE_ENV}

# Ensure qt2 will always be at the front
MAKE_FLAGS=CXXLD='--tag CXX ${CXX} -L${LOCALBASE}/lib/qt2'

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MTREE_FILE=${PORTSDIR}/x11/kde/libs2/files/mtree

.include <bsd.port.mk>
