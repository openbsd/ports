# $OpenBSD: Makefile,v 1.6 2002/04/04 18:29:21 espie Exp $

COMMENT=		"X11 toolkit, libraries"
CATEGORIES=		x11 x11/kde
NEED_VERSION=		1.504
VERSION=		3.0
DISTNAME=		kdelibs-${VERSION}
DIST_SUBDIR=		kde

HOMEPAGE=		http://www.kde.org
MASTER_SITES=	${MASTER_SITE_KDE}
MASTER_SITE_SUBDIR=	stable/${VERSION}/src
EXTRACT_SUFX=		.tar.bz2

# Parts of kde want shared libraries to work, as some symbols are
# duplicated over the place.
NOT_FOR_ARCHS=${NO_SHARED_ARCHS}

# our linker is insane, at least on some arches
VMEM_WARNING=Yes

MODULES=	qt3
LIB_DEPENDS= 	png.2::graphics/png \
		jpeg.62::graphics/jpeg \
		tiff.35::graphics/tiff \
		audiofile::devel/libaudiofile \
		pcreposix,pcre::devel/pcre \
		xml2.6:libxml->=2.4.8:textproc/libxml \
		xslt.1.10:libxsl->=1.0.10:textproc/libxslt \
		bz2::archivers/bzip2 \
		artsflow.1.0,artsflow_idl.1.0,kmedia2_idl.1.0,mcop.1.0,qtmcop.1.0,soundserver_idl.1.0::x11/kde/arts3

BUILD_DEPENDS=	:qt3-html-*:x11/qt3,-html

# glib2.0 
# qt docs
# CUPS

MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC} ${WRKSRC}/admin

CONFIGURE_STYLE=	autoconf
AUTOCONF_NEW=		Yes
CONFIGURE_ARGS=		${MODQT_CONFIGURE_ARGS}
CONFIGURE_ARGS+=	--with-extra-libs=${LOCALBASE}/lib
CONFIGURE_ARGS+=	--with-extra-includes=${LOCALBASE}/include
CONFIGURE_ARGS+=	--disable-threading
CONFIGURE_ARGS+=	--enable-mitshm
CONFIGURE_ARGS+=	--disable-debug
CONFIGURE_ARGS+=	--enable-final
PATCH_LIST=	${PORTSDIR}/x11/kde/arts3/patches/p-* patch-*
#CONFIGURE_ARGS+=	--enable-debug
#CONFIGURE_ARGS+=--enable-static --enable-debug --disable-shared

#CONFIGURE_ARGS+=	--enable-static --disable-shared

CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}

USE_GMAKE=		Yes
CONFIGURE_ENV=		QTDOCDIR=${LOCALBASE}/share/doc/qt2/html

# you don't want to know...
CONFIGURE_ENV+=		ac_aux_files=''

MAKE_ENV=		${CONFIGURE_ENV}

# Ensure qt will always be at the front
MAKE_FLAGS=CXXLD='--tag CXX ${CXX} -L${MODQT_LIBDIR}'

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

EXTRA_DIRECTORIES= \
	share/applnk/Editors \
	share/applnk/Edutainment \
	share/applnk/Games/Arcade \
	share/applnk/Games/Board \
	share/applnk/Games/Card \
	share/applnk/Games/TacticStrategy \
	share/applnk/Graphics \
	share/applnk/Settings/Information \
	share/applnk/Settings/PowerControl \
	share/applnk/System/ScreenSavers \
	share/applnk/Toys \
	share/applnk/Utilities \
	share/apps/kdesktop/programs \
	share/apps/kicker/applets \
	share/apps/knewsticker \
	share/apps/konqueror \
	share/apps/kscreensaver \
	share/apps/kthememgr/Themes \
	share/apps/kwin/icewm-themes \
	share/apps/kworldclock/maps/depths \
	share/icons/hicolor/22x22/apps \
	share/icons/hicolor/32x32/apps \
	share/icons/hicolor/48x48/apps \
	share/icons/locolor/16x16/apps \
	share/icons/locolor/32x32/apps \
	share/sounds \
	share/wallpapers

post-install:
.for i in ${EXTRA_DIRECTORIES}
	@${INSTALL_DATA_DIR} ${PREFIX}/$i
.endfor

.include <bsd.port.mk>
