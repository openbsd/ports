# $OpenBSD: Makefile,v 1.21 2001/08/23 22:25:49 espie Exp $

COMMENT= 		"X11 toolkit, basic applications"
COMMENT-plugins=	"X11 toolkit, netscape plugins"
CATEGORIES=		x11 x11/kde
NEED_VERSION=		1.405
VERSION=		2.2
DISTNAME=		kdebase-${VERSION}
PKGNAME-plugins=	kdebase-ns-${VERSION}
DIST_SUBDIR=		kde

HOMEPAGE=		http://www.kde.org
MASTER_SITES=		${MASTER_SITE_KDE}
MASTER_SITE_SUBDIR=	stable/${VERSION}/src/
EXTRACT_SUFX=		.tar.bz2

# Parts of kde want shared libraries to work, as some symbols are
# duplicated over the place.
NOT_FOR_ARCHS=${NO_SHARED_ARCHS}

MULTI_PACKAGES=-plugins

SUBPACKAGE?=
.if !defined(PACKAGING) || ${SUBPACKAGE} == "-plugins"
USE_MOTIF=	any
.endif

LIB_DEPENDS=	kdecore.3.::x11/kde/libs2 \
		ldap.2::databases/openldap \
		vorbis.::audio/libvorbis \
		libcdda_paranoia.::audio/cdparanoia

BUILD_DEPENDS=	uic::x11/qt2-designer
BUILD_DEPENDS+=	zsh:zsh-*:shells/zsh/stable

CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS=		--with-qt-includes=${LOCALBASE}/include/X11/qt2
CONFIGURE_ARGS+=	--with-qt-libraries=${LOCALBASE}/lib/qt2
CONFIGURE_ARGS+=	--with-extra-libs=${LOCALBASE}/lib
CONFIGURE_ARGS+=	--with-extra-includes=${LOCALBASE}/include
CONFIGURE_ARGS+=	--with-xdmdir=/var/X11/kdm
CONFIGURE_ARGS+=	--disable-debug
#CONFIGURE_ARGS+=	--enable-debug
#CONFIGURE_ARGS+=	--without-motif
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

post-install:
	rm -rf ${PREFIX}/share/config/kdm
	${INSTALL_PROGRAM} ${WRKSRC}/kdm/kfrontend/genkdmconf ${PREFIX}/libexec

MTREE_FILE=${PORTSDIR}/x11/kde/libs2/files/mtree

.include <bsd.port.mk>
