# $OpenBSD: Makefile,v 1.31 2013/03/11 11:10:53 espie Exp $

COMMENT-main =		kde image plugins
COMMENT-cal =		kde image calendar plugin
CATEGORIES =		graphics x11 x11/kde
DISTNAME =		kipi-plugins-0.1.6
PKGNAME-main =		${DISTNAME}
PKGNAME-cal =		kipi-kcal-plugin-0.1.6
REVISION-main =		3
REVISION-cal =		2
HOMEPAGE =		http://extragear.kde.org/apps/kipi/
MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=kipi/}
EXTRACT_SUFX =		.tar.bz2
SHARED_LIBS +=	kipiplugins          0.0      # .0.1

# Should we provide a gpod flavor ?

SUBST_VARS +=	PKGNAME-cal
MULTI_PACKAGES =-main -cal
SHARED_ONLY =	Yes
LIB_DEPENDS =	x11/kde/libs3 \
		graphics/libkipi

LIB_DEPENDS-main =${LIB_DEPENDS} \
		x11/kde/libs3 \
		graphics/libgphoto2>=2.5 \
		graphics/libkexiv2>=0.1.5 \
		graphics/libkdcraw

LIB_DEPENDS-cal =${LIB_DEPENDS} \
		x11/kde/pim3 \
		graphics/kipi-plugins,-main

RUN_DEPENDS =	graphics/ImageMagick

MODULES =	devel/gettext \
		x11/kde

WANTLIB =	ICE SM X11 Xext Xrender art_lgpl_2 \
		idn jpeg m png stdc++ \
		util xcb z kdecore>=6 DCOP kdefx kdeprint kdesu kdeui kio \
		kparts kwalletclient kipi lib/qt3/qt-mt>=3.33 \
		Xcursor Xdamage Xfixes Xft Xi Xinerama Xmu GL \
		mng freetype fontconfig drm Xt Xxf86vm \
		Xrandr expat lcms

WANTLIB-main =	${WANTLIB} ltdl \
		pcre pcreposix tiff exif \
		exslt xslt xml2 gpg-error gcrypt exiv2 \
		khtml kjs kutils gphoto2 gphoto2_port kexiv2 kdcraw

WANTLIB-cal =	${WANTLIB} kabc kresources vcard kcal kmime ktnef kipiplugins

USE_LIBTOOL =		Yes
USE_GROFF =		Yes
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
PERMIT_PACKAGE_CDROM =		Yes

.include <bsd.port.mk>
