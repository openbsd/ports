# $OpenBSD: Makefile,v 1.34 2002/03/30 00:13:23 espie Exp $

COMMENT= 		"X11 toolkit, basic applications"
COMMENT-plugins=	"X11 toolkit, netscape plugins"
CATEGORIES=		x11 x11/kde
NEED_VERSION=		1.504
VERSION=		2.2.2
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

#MULTI_PACKAGES=-plugins
MODULES=qt2

#SUBPACKAGE?=
#.if !defined(PACKAGING) || ${SUBPACKAGE} == "-plugins"
#USE_MOTIF=	any
#.endif

LIB_DEPENDS=	kdecore.3,kdeui,DCOP,artskde,kab,kdefakes,kdeprint,kdeprint_management,kdesu,kfile,khtml,kio,kjava,kmid,kparts,kscreensaver,kspell,kssl,ksycoca,ktexteditor,soundserver_idl::x11/kde/libs2 \
		ldap.2,lber:openldap-client-2.*:databases/openldap \
		vorbis,vorbisenc::audio/libvorbis \
		cdda_paranoia,cdda_interface::audio/cdparanoia

BUILD_DEPENDS=	::x11/qt2-designer ::audio/lame

CONFIGURE_STYLE=	autoconf
AUTOCONF_NEW=		Yes
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/admin
CONFIGURE_ARGS=		${MODQT_CONFIGURE_ARGS}
CONFIGURE_ARGS+=	--with-extra-libs=${LOCALBASE}/lib
CONFIGURE_ARGS+=	--with-extra-includes=${LOCALBASE}/include
CONFIGURE_ARGS+=	--with-xdmdir=/var/X11/kdm
CONFIGURE_ARGS+=	--disable-debug
CONFIGURE_ARGS+=	--enable-final
#CONFIGURE_ARGS+=	--enable-debug
CONFIGURE_ARGS+=	--without-motif
#CONFIGURE_ARGS+=--enable-static --enable-debug --disable-shared

PATCH_LIST=${PORTSDIR}/x11/kde/libs2/patches/p-* patch-*

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
	cd ${LAMEDIR} && ${CC} -I${LOCALBASE}/include -o libmp3lame.so.0.0 -shared -fpic -O2 lame.c


# Ensure qt2 will always be at the front
MAKE_FLAGS=CXXLD='--tag CXX ${CXX} -L${MODQT_LIBDIR}'
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
