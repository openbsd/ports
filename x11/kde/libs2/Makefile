# $OpenBSD: Makefile,v 1.37 2002/04/03 16:38:21 espie Exp $

COMMENT=		"X11 toolkit, libraries"
CATEGORIES=		x11 x11/kde
NEED_VERSION=		1.504
VERSION=		2.2.2
DISTNAME=		kdelibs-${VERSION}
DIST_SUBDIR=		kde

HOMEPAGE=		http://www.kde.org
MASTER_SITES=	${MASTER_SITE_KDE}
MASTER_SITE_SUBDIR=	stable/${VERSION}/src
EXTRACT_SUFX=		.tar.bz2

# Parts of kde want shared libraries to work, as some symbols are
# duplicated over the place.
NOT_FOR_ARCHS=${NO_SHARED_ARCHS}

MODULES=	qt2
LIB_DEPENDS= 	png.2::graphics/png \
		jpeg.62::graphics/jpeg \
		tiff.35::graphics/tiff \
		audiofile::devel/libaudiofile \
		pcreposix,pcre::devel/pcre \
		xml2.6:libxml->=2.4.8:textproc/libxml \
		xslt.1.6::textproc/libxslt \
		bz2::archivers/bzip2

BUILD_DEPENDS=	:qt2-html-*:x11/qt2,-html

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
PATCH_LIST=	p-* patch-*
#CONFIGURE_ARGS+=	--enable-debug
#CONFIGURE_ARGS+=--enable-static --enable-debug --disable-shared

#CONFIGURE_ARGS+=	--enable-static --disable-shared

CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}

USE_GMAKE=		Yes
CONFIGURE_ENV=		QTDOCDIR=${LOCALBASE}/share/doc/qt2/html

# you don't want to know...
CONFIGURE_ENV+=		ac_aux_files=''

MAKE_ENV=		${CONFIGURE_ENV}

pre-build:
	@if pkg dependencies check kdelibs-\*; then \
		if pkg dependencies check ${DISTNAME}; then \
			:; \
		else \
			echo 1>&2 "Error: you must remove your old kdelibs first"; \
			exit 1; \
		fi; \
    	fi

# Ensure qt2 will always be at the front
MAKE_FLAGS=CXXLD='--tag CXX ${CXX} -L${MODQT_LIBDIR}'

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

# These are necessary because of packages dependent on kde2 that don't
# really `own' the dir. Creating it in kdelibs is the easiest way.

EXTRA_DIRECTORIES= \
	share/applnk/.hidden \
	share/applnk/Games/Arcade \
	share/applnk/Games/Board \
	share/applnk/Games/Card \
	share/applnk/Games/TacticStrategy \
	share/applnk/Graphics \
	share/applnk/Internet \
	share/applnk/Office \
	share/applnk/Settings/FileBrowsing \
	share/applnk/Settings/LookNFeel \
	share/applnk/Settings/Network \
	share/applnk/Settings/Personalization \
	share/applnk/Settings/System/ScreenSavers \
	share/applnk/System/ScreenSavers \
	share/applnk/Toys \
	share/applnk/Utilities \
	share/apps/kab/pics \
	share/apps/kdesktop/programs \
	share/apps/kdisplay/color-schemes \
	share/apps/kicker/applets \
	share/apps/konqueror/dirtree/remote \
	share/apps/kthememgr/Themes \
	share/apps/kwin/icewm-themes \
	share/icons/hicolor/32x32/apps \
	share/icons/hicolor/48x48/apps \
	share/icons/locolor/16x16/apps \
	share/icons/locolor/32x32/apps \
	share/sounds \
	share/templates/.source

post-install:
.for i in ${EXTRA_DIRECTORIES}
	@${INSTALL_DATA_DIR} ${PREFIX}/$i
.endfor

.include <bsd.port.mk>
