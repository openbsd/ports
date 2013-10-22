# $OpenBSD: Makefile,v 1.30 2013/10/22 11:34:26 zhuk Exp $

COMMENT=	organizer for book/dvd/music collections

DISTNAME=	tellico-1.3.6
REVISION=	10

CATEGORIES=	x11 databases

HOMEPAGE=	http://www.periapsis.org/tellico/
MASTER_SITES=	${HOMEPAGE}download/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB =  GL ICE SM X11 Xcursor Xdamage Xext Xfixes Xft Xi Xinerama
WANTLIB += Xmu Xrandr Xrender Xt Xxf86vm art_lgpl_2 c drm exempi expat
WANTLIB += exslt fam fontconfig freetype gcrypt gpg-error idn jpeg
WANTLIB += lcms lcms2 m mng openjpeg pcre pcreposix png poppler
WANTLIB += poppler-qt>=3 pthread stdc++ tag tiff util xcb xml2 xslt
WANTLIB += yaz z
WANTLIB += ${KDE}/DCOP ${KDE}/kabc ${KDE}/kcal ${KDE}/kcddb
WANTLIB += ${KDE}/kdecore>=6 ${KDE}/kdefx ${KDE}/kdeprint ${KDE}/kdesu
WANTLIB += ${KDE}/kdeui ${KDE}/khtml ${KDE}/kio ${KDE}/kjs
WANTLIB += ${KDE}/kmime ${KDE}/knewstuff ${KDE}/kparts
WANTLIB += ${KDE}/kresources ${KDE}/ktnef ${KDE}/kutils
WANTLIB += ${KDE}/kwalletclient ${KDE}/vcard

MODULES=	x11/kde \
		lang/python \
		devel/gettext

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu

CONFIGURE_ENV=	${MODKDE_CONFIGURE_ENV}
CONFIGURE_ARGS=	${MODKDE_CONFIGURE_ARGS} \
		${CONFIGURE_SHARED} \
		--disable-libsuffix

MAKE_FLAGS=	${MODKDE_MAKE_FLAGS}

RUN_DEPENDS=	devel/desktop-file-utils \
		misc/shared-mime-info>=0.21 \
		x11/gtk+2,-guic

LIB_DEPENDS=	${MODQT_LIB_DEPENDS} \
		textproc/exempi \
		x11/kde/pim3 \
		x11/kde/multimedia3 \
		x11/kde/libs3 \
		graphics/lcms \
		print/poppler,,-qt \
		audio/taglib \
		net/yaz

NO_TEST=	Yes

post-patch:
	find ${WRKSRC}/doc -name '*.docbook' | \
		xargs perl -pi.kde3 -e 's@share/apps/@share/apps.kde3/@g'

.include <bsd.port.mk>
