# $OpenBSD: Makefile,v 1.26 2001/09/19 15:20:11 espie Exp $

COMMENT= 		"X11 toolkit, basic applications"
COMMENT-plugins=	"X11 toolkit, netscape plugins"
CATEGORIES=		x11 x11/kde
NEED_VERSION=		1.458
VERSION=		2.2.1
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
MODULES=qt2

SUBPACKAGE?=
.if !defined(PACKAGING) || ${SUBPACKAGE} == "-plugins"
USE_MOTIF=	any
.endif

LIB_DEPENDS=	kdecore.3,kdeui::x11/kde/libs2 \
		ldap.2::databases/openldap \
		vorbis.::audio/libvorbis \
		cdda_paranoia.::audio/cdparanoia

BUILD_DEPENDS=	::x11/qt2-designer :zsh-*:shells/zsh/stable ::audio/lame

CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS=		${MODQT_CONFIGURE_ARGS}
CONFIGURE_ARGS+=	--with-extra-libs=${LOCALBASE}/lib
CONFIGURE_ARGS+=	--with-extra-includes=${LOCALBASE}/include
CONFIGURE_ARGS+=	--with-xdmdir=/var/X11/kdm
CONFIGURE_ARGS+=	--disable-debug
CONFIGURE_ARGS+=	--enable-final
#CONFIGURE_ARGS+=	--enable-debug
#CONFIGURE_ARGS+=	--without-motif
#CONFIGURE_ARGS+=--enable-static --enable-debug --disable-shared

# Not yet, too much time to compile
#CONFIGURE_ARGS+=	--enable-static
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}

USE_GMAKE=		Yes
CONFIGURE_ENV=		RUN_KAPPFINDER=no KDEDIR=${LOCALBASE}
CONFIGURE_ENV+=		ac_aux_files=''
MAKE_ENV=		${CONFIGURE_ENV}

LAMEDIR=${WRKDIR}/lamestub

post-patch:
	mkdir -p ${LAMEDIR}
	cp ${FILESDIR}/lame.c ${LAMEDIR}

pre-build:
	# Let zsh act as an sh replacement
	ln -sf $(LOCALBASE)/bin/zsh ${WRKBUILD}/sh
	cd ${LAMEDIR} && ${CC} -I${LOCALBASE}/include -o libmp3lame.so.0.0 -shared -fpic -O2 lame.c


# Ensure qt2 will always be at the front
MAKE_FLAGS=CXXLD='--tag CXX ${CXX} -L${MODQT_LIBDIR}'
MAKE_FLAGS+=LIBTOOL='$(WRKBUILD)/sh $(WRKBUILD)/libtool'
MAKE_FLAGS+=LAMEDIR='${LAMEDIR}'

# GPL
# Note that lame is not a problem, since kdebase is packaged with a
# stub lame library which does nothing, and can be overriden with a
# live one later.
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

post-install:
	rm -rf ${PREFIX}/share/config/kdm
	${INSTALL_PROGRAM} ${WRKSRC}/kdm/kfrontend/genkdmconf ${PREFIX}/libexec
	${INSTALL_DATA} ${LAMEDIR}/libmp3lame.so.0.0 ${PREFIX}/lib

MTREE_FILE=${PORTSDIR}/x11/kde/libs2/files/mtree

.include <bsd.port.mk>
