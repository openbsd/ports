# $OpenBSD: Makefile,v 1.8 2001/09/06 13:01:53 espie Exp $

COMMENT=		"office applications for kde"
CATEGORIES=		x11 x11/kde productivity
NEED_VERSION=		1.451
VERSION=		1.1
DISTNAME=		koffice-${VERSION}
DIST_SUBDIR=		kde

MASTER_SITES=	${MASTER_SITE_KDE}
MASTER_SITE_SUBDIR=	stable/koffice-${VERSION}/src/
EXTRACT_SUFX=		.tar.bz2

NOT_FOR_ARCHS=${NO_SHARED_ARCHS}

BUILD_DEPENDS=	zsh:zsh-*:shells/zsh/stable \
				uic::x11/qt2-designer
LIB_DEPENDS=	kdecore.3.::x11/kde/libs2

MODULES=	qt2
CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS=		${MODQT_CONFIGURE_ARGS}
CONFIGURE_ARGS+=	--with-extra-libs=${LOCALBASE}/lib
CONFIGURE_ARGS+=	--with-extra-includes=${LOCALBASE}/include
CONFIGURE_ARGS+=	--disable-debug
#CONFIGURE_ARGS+=--enable-static --enable-debug --disable-shared

# Not yet, too much time to compile
#CONFIGURE_ARGS+=	--enable-static
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}

USE_GMAKE=		Yes
CONFIGURE_ENV+=		RUN_KAPPFINDER=no KDEDIR=${LOCALBASE}
MAKE_ENV=		${CONFIGURE_ENV}

pre-build:
	# Let zsh act as an sh replacement
	ln -sf $(LOCALBASE)/bin/zsh ${WRKBUILD}/sh

# Ensure qt2 will always be at the front
MAKE_FLAGS=CXXLD='--tag CXX ${CXX} -L${MODQT_LIBDIR}'
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
