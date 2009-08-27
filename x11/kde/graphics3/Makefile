# $OpenBSD: Makefile,v 1.85 2009/08/27 19:44:38 ajacoutot Exp $

COMMENT-main =		K Desktop Environment, graphic applications
COMMENT-kamera =	KDE interface to digital cameras
COMMENT-kpov =		KDE modeller for povray
COMMENT-sane =		KDE interface to scanners
CATEGORIES =		x11 x11/kde
VERSION =		3.5.10
DISTNAME =		kdegraphics-${VERSION}
MODKDE_VERSION =	3.5.8

FLAVORS =		debug
SEPARATE_BUILD =	flavored
MULTI_PACKAGES =	-main -kpov -kamera -sane
PKGNAME =		${DISTNAME}

PKGNAME-main =		${DISTNAME}p1
PKGNAME-kamera =	kamera-${VERSION}p1
PKGNAME-kpov =		kpovmodeller-${VERSION}p1
PKGNAME-sane =		ksane-${VERSION}p2

SHARED_LIBS +=	kghostviewlib        1.0      # .0.0
SHARED_LIBS +=	kpovmodeler          1.0      # .0.0
SHARED_LIBS +=	text2path            1.0      # .0.0
SHARED_LIBS +=	ksvg                 1.0      # .0.1
SHARED_LIBS +=	kimageviewer         1.0      # .0.0
SHARED_LIBS +=	kmultipage           1.0      # .0.0
SHARED_LIBS +=	kscan                2.0      # .1.0

MODULES =		x11/kde devel/gettext
# only needed for the -sane subpackage
MODULES +=		converters/libiconv

BUILD_DEPENDS =		::print/texlive/base
WANTLIB =		X11 art_lgpl_2 ICE png util jpeg z SM Xext \
			m idn Xau Xdmcp fam rpcsvc stdc++ \
			pthread-stubs xcb


RUN_DEPENDS-main =	${RUN_DEPENDS} \
			:ghostscript-*:print/ghostscript/gnu \
			:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS-main = 	${MODGETTEXT_LIB_DEPENDS} \
			kdecore.>=6,DCOP,kio,kwalletclient,kdefx,kdeui,kdesu,kdeprint,khtml,kjs,kparts,kutils::x11/kde/libs3 \
			Imlib::graphics/imlib \
			ungif::graphics/libungif \
			fribidi::devel/fribidi \
			paper::print/libpaper \
			poppler::print/poppler \
			poppler-qt::print/poppler,-qt
WANTLIB-main =		${WANTLIB} \
			Half Iex IlmImf IlmThread Imath \
			tiff fontconfig lcms Xrender ICE c \
			freetype pcreposix pcre Xxf86vm SM Xext Xft \
			expat xml2 pthread


LIB_DEPENDS-kpov =	${MODGETTEXT_LIB_DEPENDS} \
			kdecore.>=6,DCOP,kio,kwalletclient,kdefx,kdeui,kdesu,kparts::x11/kde/libs3
RUN_DEPENDS-kpov =	::graphics/povray \
			:desktop-file-utils-*:devel/desktop-file-utils
WANTLIB-kpov =		${WANTLIB} GL freetype Xrender Xmu GLU c Xi \
			Xt pthread

LIB_DEPENDS-kamera = 	${MODGETTEXT_LIB_DEPENDS} \
			kdecore.>=6,DCOP,kio,kwalletclient,kdefx,kdeui,kdesu::x11/kde/libs3
WANTLIB-kamera =	${WANTLIB} exif Xrender ltdl

RUN_DEPENDS-sane =	:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS-sane =	${MODLIBICONV_LIB_DEPENDS} \
			kdecore.>=6,DCOP,kio,kwalletclient,kdefx,kdeui,kdesu,ktexteditor,vcard,kabc,kparts,kresources,kspell,kdeprint::x11/kde/libs3 \
			sane::graphics/sane-backends
WANTLIB-sane =		${WANTLIB-kamera} usb tiff c ltdl pthread avahi-client avahi-common dbus-1 \
			gphoto2,gphoto2_port


CONFIGURE_ENV +=	\
	PKG_CONFIG_PATH="${LOCALBASE}/lib/pkgconfig:${X11BASE}/lib/pkgconfig"

post-patch:
	@cp ${FILESDIR}/part_init.cpp ${WRKSRC}/kghostview

.if ${MACHINE_ARCH} == "sparc64"
SUP_PATCH_LIST =	gcc-*
.endif

CONFIGURE_ENV +=	TIFF_LIBS='-L${LOCALBASE}/lib -ltiff -ljpeg -lz' \
			TIFF_CFLAGS='-I${LOCALBASE}/include'

.include <bsd.port.mk>
