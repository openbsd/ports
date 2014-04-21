# $OpenBSD: Makefile,v 1.141 2014/04/21 19:21:54 sthen Exp $

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
REVISION-main =		33

MODKDE_VERSION =	3.5.8

SHARED_LIBS +=	DCOP                 7.0      # .6.0
SHARED_LIBS +=	kdefx                7.0      # .6.0
SHARED_LIBS +=	kdefakes             7.0      # .6.0
SHARED_LIBS +=	kdecore              7.0      # .6.0
SHARED_LIBS +=	kunittest            2.0      # .1.0
SHARED_LIBS +=	kdeui                8.0      # .6.0
SHARED_LIBS +=	kspell               7.0      # .6.0
SHARED_LIBS +=	kdesu                7.0      # .6.0
SHARED_LIBS +=	kjs                  5.0      # .3.0
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
SHARED_LIBS +=	khtml                7.0      # .6.0
SHARED_LIBS +=	ktexteditor          1.0      # .0.0
SHARED_LIBS +=	kscript              1.0      # .0.0
SHARED_LIBS +=	kmediaplayer         1.0      # .0.0
SHARED_LIBS +=	kimproxy             1.0      # .0.0
SHARED_LIBS +=	katepartinterfaces   1.0      # .0.0

WANTLIB-main += ${MODGETTEXT_WANTLIB}
WANTLIB-main += FLAC GL Half ICE Iex IlmImf IlmThread Imath SM X11
WANTLIB-main += X11-xcb Xau Xcursor Xdamage Xdmcp Xext Xfixes Xft Xi
WANTLIB-main += Xinerama Xmu Xrandr Xrender Xt Xxf86vm art_lgpl_2 artsflow
WANTLIB-main += artsflow_idl asn1 aspell audiofile avahi-client avahi-common
WANTLIB-main += bz2 c com_err crypto dbus-1 dns_sd drm expat fam fontconfig
WANTLIB-main += freetype glapi glib-2.0 gmodule-2.0 gssapi gthread-2.0
WANTLIB-main += heimbase idn jasper jpeg kmedia2_idl krb5 lcms m mad
WANTLIB-main += mcop mng ogg pcre pcreposix png pthread pthread-stubs
WANTLIB-main += qt-mt qtmcop roken sndio soundserver_idl stdc++ tiff
WANTLIB-main += util vorbis vorbisenc vorbisfile wind xcb xcb-dri2
WANTLIB-main += xcb-glx xml2 xslt z
WANTLIB-langlist =

MULTI_PACKAGES =	-main -langlist

MODULES =		x11/kde devel/gettext

RUN_DEPENDS-langlist =
RUN_DEPENDS-main =	${RUN_DEPENDS} \
			kde3-langlist-*|kde4-langlist-*:${BUILD_PKGPATH},-langlist \
			devel/desktop-file-utils \
			x11/gtk+2,-guic

LIB_DEPENDS-langlist =
LIB_DEPENDS-main =	${LIB_DEPENDS} \
			archivers/bzip2 \
			devel/libidn \
			devel/pcre \
			graphics/jasper \
			graphics/libart \
			graphics/openexr \
			graphics/tiff \
			net/avahi \
			sysutils/gamin \
			textproc/aspell/core \
			textproc/libxslt>=1.0.10 \
			x11/kde/arts3

SEPARATE_BUILD =	flavored

# broken with cups>=1.6.0
CONFIGURE_ARGS =	--disable-cups \
			--without-lua

MODGNU_AUTOCONF_FILES +=	dcop/dcop-path.h.in

pre-configure:
	@perl -pi -e 's,!!LOCALBASE!!,${LOCALBASE},g' \
		${WRKSRC}/kdeprint/cups/kmcupsmanager.cpp

.include <bsd.port.mk>
