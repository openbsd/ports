# $OpenBSD: Makefile,v 1.24 2009/08/10 06:31:44 kili Exp $

COMMENT =		digital image kde application
CATEGORIES =		graphics x11 x11/kde
V =			0.9.4
DISTNAME =		digikam-$V
PKGNAME =		${DISTNAME}p1
SHARED_LIBS +=		digikam              3.0      # .0.0
HOMEPAGE =		http://www.digikam.org/
MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=digikam/}
DISTFILES =		${DISTNAME}.tar.bz2

SHARED_ONLY =		Yes

RUN_DEPENDS =	:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS +=	lib/qt3/qt-mt.>=3.33::x11/qt3 \
		kdecore.>=6,kwalletclient,DCOP,kparts,kdeui,kdesu,kio,kdefx,kdeprint,kutils,kabc,vcard,kresources,khtml,kjs::x11/kde/libs3 \
		gphoto2,gphoto2_port::graphics/libgphoto2 \
		kipi::graphics/libkipi \
		tiff::graphics/tiff \
		kexiv2.>=1.0:libkexiv2->=0.1.5:graphics/libkexiv2 \
		kdcraw::graphics/libkdcraw \
		lcms::graphics/lcms

WANTLIB =	util m c ICE Xrender SM pthread z stdc++ \
		Xext X11 jpeg png art_lgpl_2 exif intl iconv idn \
		exiv2 jasper pcre pcreposix Xau Xdmcp fam rpcsvc ltdl \
		pthread-stubs xcb

MODULES =	x11/kde

MODKDE_VERSION =	3.5.8
CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.61
CONFIGURE_ARGS +=	${MODKDE_CONFIGURE_ARGS}

CONFIGURE_ARGS +=	--without-included-sqlite3
LIB_DEPENDS +=		sqlite3:sqlite3->=3.5.9:databases/sqlite3

USE_GMAKE ?=		Yes
CONFIGURE_ENV +=	${MODKDE_CONFIGURE_ENV}
CONFIGURE_ENV +=	CPPFLAGS=-I${LOCALBASE}/include LDFLAGS=-L${LOCALBASE}/lib
MAKE_ENV =		${CONFIGURE_ENV}
SUBST_VARS +=		V

MAKE_FLAGS +=		${MODKDE_MAKE_FLAGS} LIBKEXIF_LIBS='-L${PREFIX}/lib -lkexif -lintl -liconv'
MAKE_FLAGS +=		LIBRESOLV=
 
# GPL
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes

.include <bsd.port.mk>
