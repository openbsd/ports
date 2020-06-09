# $OpenBSD: Makefile,v 1.165 2020/06/09 07:14:46 jasper Exp $

# if this port is removed, please rename imagetops back to the normal
# filename in graphics/leptonica

BROKEN-alpha =		.got subsegment exceeds 64K
BROKEN-mips64 =		.got subsegment exceeds 64K

COMMENT-main =		K Desktop Environment, libraries
COMMENT-langlist =	list of languages supported by KDE
CATEGORIES =		x11 x11/kde
VERSION =		3.5.10
DISTNAME =		kdelibs-${VERSION}
PKGNAME-main =		${DISTNAME}
PKGSPEC-main =		kdelibs->=3,<4
PKGNAME-langlist =	kde3-langlist-${VERSION}
PKG_ARCH-langlist =	*
REVISION-main =		52
REVISION-langlist =	4

MODKDE_VERSION =	3.5.8

SHARED_LIBS +=	DCOP                 7.0      # .6.0
SHARED_LIBS +=	kdefx                7.0      # .6.0
SHARED_LIBS +=	kdefakes             7.0      # .6.0
SHARED_LIBS +=	kdecore              7.0      # .6.0
SHARED_LIBS +=	kunittest            2.0      # .1.0
SHARED_LIBS +=	kdeui                9.0      # .6.0
SHARED_LIBS +=	kspell               7.0      # .6.0
SHARED_LIBS +=	kdesu                7.0      # .6.0
SHARED_LIBS +=	kjs                  6.0      # .3.0
SHARED_LIBS +=	kwalletclient        2.0      # .1.1
SHARED_LIBS +=	kwalletbackend       2.0      # .1.0
SHARED_LIBS +=	kio                  7.0      # .6.0
SHARED_LIBS +=	kdesasl              4.0      # .3.0
SHARED_LIBS +=	kntlm                1.0      # .0.0
SHARED_LIBS +=	artskde              4.0      # .3.0
SHARED_LIBS +=	kdnssd               2.0      # .1.0
SHARED_LIBS +=	knewstuff            2.0      # .1.0
SHARED_LIBS +=	kparts               4.0      # .3.0
SHARED_LIBS +=	kresources           4.0      # .3.0
SHARED_LIBS +=	kutils               4.0      # .3.0
SHARED_LIBS +=	kmid                 1.0      # .0.95
SHARED_LIBS +=	kscreensaver         7.0      # .6.0
SHARED_LIBS +=	kdeprint             7.0      # .6.0
SHARED_LIBS +=	kdeprint_management  7.0      # .6.0
SHARED_LIBS +=	vcard                1.0      # .0.0
SHARED_LIBS +=	kabc                 4.0      # .3.0
SHARED_LIBS +=	kabc_file            2.0      # .1.0
SHARED_LIBS +=	kabc_dir             2.0      # .1.0
SHARED_LIBS +=	kabc_ldapkio         2.0      # .1.0
SHARED_LIBS +=	kspell2              2.0      # .1.0
SHARED_LIBS +=	kmdi2                2.0      # .1.0
SHARED_LIBS +=	kmdi                 2.0      # .1.0
SHARED_LIBS +=	kjava                2.0      # .1.0
SHARED_LIBS +=	khtml                8.0      # .6.0
SHARED_LIBS +=	ktexteditor          1.0      # .0.0
SHARED_LIBS +=	kscript              1.0      # .0.0
SHARED_LIBS +=	kmediaplayer         1.0      # .0.0
SHARED_LIBS +=	kimproxy             1.0      # .0.0
SHARED_LIBS +=	katepartinterfaces   1.0      # .0.0

WANTLIB-main += FLAC GL ICE SM X11
WANTLIB-main += X11-xcb Xcursor Xdamage Xext Xfixes Xft Xi
WANTLIB-main += Xinerama Xmu Xrandr Xrender Xt Xxf86vm art_lgpl_2 artsflow
WANTLIB-main += artsflow_idl aspell audiofile avahi-client avahi-common
WANTLIB-main += bz2 c dbus-1 dns_sd drm expat fam fontconfig
WANTLIB-main += freetype glapi glib-2.0 gmodule-2.0 gthread-2.0
WANTLIB-main += iconv idn intl jasper jpeg kmedia2_idl lcms lzma m mad
WANTLIB-main += mcop mng ogg pcre pcreposix png pthread
WANTLIB-main += qt-mt qtmcop sndio soundserver_idl ${COMPILER_LIBCXX} tiff
WANTLIB-main += util vorbis vorbisenc vorbisfile xcb xcb-dri2
WANTLIB-main += xcb-glx xml2 xslt z
WANTLIB-main += crypto ssl xcb-dri3 xcb-present xcb-sync xshmfence
WANTLIB-langlist =

COMPILER =		base-clang ports-gcc base-gcc

MULTI_PACKAGES =	-main -langlist

MODULES =		x11/kde

RUN_DEPENDS-langlist =
RUN_DEPENDS-main =	${RUN_DEPENDS} \
			kde3-langlist-*|kde4-langlist-*:${BUILD_PKGPATH},-langlist \
			devel/desktop-file-utils \
			x11/gtk+3,-guic

LIB_DEPENDS-langlist =
LIB_DEPENDS-main =	${LIB_DEPENDS} \
			archivers/bzip2 \
			devel/libidn \
			devel/pcre \
			graphics/jasper \
			graphics/libart \
			graphics/tiff \
			net/avahi \
			sysutils/gamin \
			textproc/aspell/core \
			textproc/libxslt>=1.0.10 \
			x11/kde/arts3

TEST_IS_INTERACTIVE =	X11

SEPARATE_BUILD =	flavored

# broken with cups>=1.6.0
CONFIGURE_ARGS =	--disable-cups \
			--without-lua \
			--without-gssapi \
			--without-openexr

MODGNU_AUTOCONF_FILES +=	dcop/dcop-path.h.in

pre-configure:
	@perl -pi -e 's,!!LOCALBASE!!,${LOCALBASE},g' \
		${WRKSRC}/kdeprint/cups/kmcupsmanager.cpp

.include <bsd.port.mk>
