# $OpenBSD: Makefile,v 1.10 2001/03/11 16:13:47 espie Exp $

CATEGORIES=		x11 x11/kde
NEED_VERSION=		1.305
VERSION=		2.0.1
DISTNAME=		kdebase-${VERSION}
DIST_SUBDIR=		kde

MASTER_SITES=	${MASTER_SITE_KDE}
MASTER_SITE_SUBDIR=	stable/${VERSION}/distribution/tar/generic/src/
EXTRACT_SUFX=		.tar.bz2

LIB_DEPENDS=	kdecore.3.::x11/kde/libs2 \
		Xm.1.2::x11/lesstif

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-qt-includes=${LOCALBASE}/include/X11/qt2
CONFIGURE_ARGS+=	--with-qt-libraries=${LOCALBASE}/lib/qt2
CONFIGURE_ARGS+=	--with-extra-libs=${LOCALBASE}/lib
CONFIGURE_ARGS+=	--with-extra-includes=${LOCALBASE}/include
CONFIGURE_ARGS+=	--with-xdmdir=/var/X11/kdm
#CONFIGURE_ARGS+=	--without-motif
#CONFIGURE_ARGS+=--enable-static --enable-debug --disable-shared

# Not yet, too much time to compile
#CONFIGURE_ARGS+=	--enable-static
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}

USE_GMAKE=		Yes
CONFIGURE_ENV=		MOC=${LOCALBASE}/bin/moc2 \
	RUN_KAPPFINDER=no KDEDIR=/usr/local
MAKE_ENV=		${CONFIGURE_ENV}

# Ensure qt2 will always be at the front
MAKE_FLAGS=CXXLD='--tag CXX ${CXX} -L${LOCALBASE}/lib/qt2'

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

pre-fake:
	${SUDO} /usr/sbin/mtree -U -e -d -n -p ${PREFIX} \
	    -f ${PORTSDIR}/x11/kde/libs2/files/mtree >/dev/null

.include <bsd.port.mk>
