# $OpenBSD: Makefile,v 1.33 2015/05/05 17:00:21 sthen Exp $

COMMENT=	organizer for book/dvd/music collections

DISTNAME=	tellico-1.3.6
REVISION=	13

CATEGORIES=	x11 databases

HOMEPAGE=	http://www.periapsis.org/tellico/
MASTER_SITES=	${HOMEPAGE}download/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${KDE}/DCOP ${KDE}/kabc ${KDE}/kcal ${KDE}/kcddb
WANTLIB += ${KDE}/kdecore>=6 ${KDE}/kdefx ${KDE}/kdeprint ${KDE}/kdesu
WANTLIB += ${KDE}/kdeui ${KDE}/khtml ${KDE}/kio ${KDE}/kjs ${KDE}/kmime
WANTLIB += ${KDE}/knewstuff ${KDE}/kparts ${KDE}/kresources ${KDE}/ktnef
WANTLIB += ${KDE}/kutils ${KDE}/kwalletclient ${KDE}/vcard
WANTLIB += GL ICE SM X11 Xcursor Xdamage Xext Xfixes Xft Xi Xinerama Xmu
WANTLIB += Xrandr Xrender Xt Xxf86vm art_lgpl_2 c drm exempi expat exslt
WANTLIB += fam fontconfig freetype gcrypt gpg-error idn jpeg lcms lcms2
WANTLIB += m mng openjpeg pcre pcreposix png poppler poppler-qt>=3
WANTLIB += pthread stdc++ tag tiff util xcb xcb-glx xml2 xslt yaz z

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
		x11/gtk+3,-guic

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
