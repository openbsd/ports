# $OpenBSD: Makefile,v 1.7 2001/08/02 14:08:58 espie Exp $

COMMENT=		"office applications for kde"
CATEGORIES=		x11 x11/kde productivity
NEED_VERSION=		1.305
VERSION=		2.0.1
DISTNAME=		koffice-${VERSION}
DIST_SUBDIR=		kde

MASTER_SITES=	${MASTER_SITE_KDE}
MASTER_SITE_SUBDIR=	stable/${VERSION}/distribution/tar/generic/src/
EXTRACT_SUFX=		.tar.bz2

NOT_FOR_ARCHS=${NO_SHARED_ARCHS}

BUILD_DEPENDS=	zsh:zsh-*:shells/zsh/stable \
				uic::x11/qt2-designer
LIB_DEPENDS=	kdecore.3.::x11/kde/libs2

CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS=		--with-qt-includes=${LOCALBASE}/include/X11/qt2
CONFIGURE_ARGS+=	--with-qt-libraries=${LOCALBASE}/lib/qt2
CONFIGURE_ARGS+=	--with-extra-libs=${LOCALBASE}/lib
CONFIGURE_ARGS+=	--with-extra-includes=${LOCALBASE}/include
CONFIGURE_ARGS+=	--disable-debug
#CONFIGURE_ARGS+=--enable-static --enable-debug --disable-shared

# Not yet, too much time to compile
#CONFIGURE_ARGS+=	--enable-static
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}

USE_GMAKE=		Yes
CONFIGURE_ENV=		MOC=${LOCALBASE}/bin/moc2 \
	RUN_KAPPFINDER=no KDEDIR=${LOCALBASE}
MAKE_ENV=		${CONFIGURE_ENV}

pre-build:
	# Let zsh act as an sh replacement
	ln -sf $(LOCALBASE)/bin/zsh ${WRKBUILD}/sh

# Ensure qt2 will always be at the front
MAKE_FLAGS=CXXLD='--tag CXX ${CXX} -L${LOCALBASE}/lib/qt2'
MAKE_FLAGS+=LIBTOOL='$(WRKBUILD)/sh $(WRKBUILD)/libtool'

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

pre-fake:
	${SUDO} /usr/sbin/mtree -U -e -d -n -p ${PREFIX} \
	    -f ${PORTSDIR}/x11/kde/libs2/files/mtree >/dev/null

.include <bsd.port.mk>
