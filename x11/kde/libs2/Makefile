# $OpenBSD: Makefile,v 1.40 2002/08/16 19:49:27 brad Exp $

COMMENT=		"X11 toolkit, libraries"
CATEGORIES=		x11 x11/kde
VERSION=		2.2.2
DISTNAME=		kdelibs-${VERSION}
PKGNAME=		${DISTNAME}p1

LIB_DEPENDS= 	png.2::graphics/png \
		jpeg.62::graphics/jpeg \
		tiff.35::graphics/tiff \
		audiofile::devel/libaudiofile \
		pcreposix,pcre::devel/pcre \
		xml2.6:libxml->=2.4.8:textproc/libxml \
		xslt.1.6::textproc/libxslt \
		bz2::archivers/bzip2

BUILD_DEPENDS=	:qt2-html-*:x11/qt2,-html

CONFIGURE_ENV=		QTDOCDIR=${LOCALBASE}/share/doc/qt2/html

pre-build:
	@if pkg dependencies check kdelibs-\*; then \
		if pkg dependencies check ${DISTNAME}; then \
			:; \
		else \
			echo 1>&2 "Error: you must remove your old kdelibs first"; \
			exit 1; \
		fi; \
    	fi

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
