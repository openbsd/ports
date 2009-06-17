# $OpenBSD: Makefile,v 1.16 2009/06/17 13:52:34 sthen Exp $

COMMENT-main =		kde image plugins
COMMENT-cal =		kde image calendar plugin
CATEGORIES =		graphics x11 x11/kde
DISTNAME =		kipi-plugins-0.1.5
PKGNAME-main =		${DISTNAME}
PKGNAME-cal =		kipi-kcal-plugin-0.1.5p0
HOMEPAGE =		http://extragear.kde.org/apps/kipi/
MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=kipi/}
EXTRACT_SUFX =		.tar.bz2
SHARED_LIBS +=	kipiplugins          0.0      # .0.1

# Should we provide a gpod flavor ?

SUBST_VARS +=	PKGNAME-cal
MULTI_PACKAGES =-main -cal
SHARED_ONLY =	Yes
LIB_DEPENDS =	kdecore.>=6,DCOP,kdefx,kdeprint,kdesu,kdeui,kio,kparts,kwalletclient::x11/kde/libs3 \
		kipi::graphics/libkipi \
		lib/qt3/qt-mt.>=3.33::x11/qt3 \

LIB_DEPENDS-main =${LIB_DEPENDS} \
		khtml,kjs,kutils::x11/kde/libs3 \
		gphoto2,gphoto2_port::graphics/libgphoto2 \
		kexiv2:libkexiv2->=0.1.5:graphics/libkexiv2 \
		kdcraw::graphics/libkdcraw

LIB_DEPENDS-cal =${LIB_DEPENDS} \
		kcal,kmime,ktnef,kabc::x11/kde/pim3 \
		kipiplugins::graphics/kipi-plugins,-main

RUN_DEPENDS =	::graphics/ImageMagick

MODULES =	x11/kde

WANTLIB =	ICE SM X11 Xau Xdmcp Xext Xrender art_lgpl_2 \
		fam iconv idn intl jpeg m png rpcsvc stdc++ util z
WANTLIB-main =	${WANTLIB} GL ltdl Xrandr \
		pcre pcreposix tiff exif \
		exslt xslt xml2 gpg-error gcrypt exiv2

WANTLIB-cal =	${WANTLIB} kresources vcard

USE_X11 =		Yes
USE_LIBTOOL =		Yes
LIBTOOL_FLAGS =		--tag=disable-static
CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.61
MODKDE_VERSION =	3.5.7
AUTOCONF =		/bin/sh ${WRKDIST}/admin/cvs.sh configure
CONFIGURE_ARGS +=	${MODKDE_CONFIGURE_ARGS} \
			--disable-ipodexport
USE_GMAKE =		Yes
CONFIGURE_ENV +=	${MODKDE_CONFIGURE_ENV}
MAKE_ENV =		${CONFIGURE_ENV}

MAKE_FLAGS +=		${MODKDE_MAKE_FLAGS} LIB_TIFF='-ltiff -lz'
MAKE_FLAGS +=		LIBRESOLV=

# GPL
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes

.include <bsd.port.mk>
