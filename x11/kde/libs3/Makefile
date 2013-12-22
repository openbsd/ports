# $OpenBSD: Makefile,v 1.137 2013/12/22 19:34:05 zhuk Exp $

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
REVISION-main =		29

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

WANTLIB-main =  asn1 crypto gssapi util jpeg krb5 m FLAC X11
WANTLIB-main += ICE Xrender c SM pthread stdc++ Xext z png
WANTLIB-main += Xau Xdmcp pthread-stubs xcb art_lgpl_2 idn
WANTLIB-main += fam>=1
WANTLIB-main +=	GL Half Iex IlmImf>=4 IlmThread Imath Xcursor Xdamage Xfixes
WANTLIB-main +=	Xft Xi Xinerama Xmu Xrandr Xt Xxf86vm artsflow>=1
WANTLIB-main +=	artsflow_idl aspell audiofile avahi-client avahi-common bz2
WANTLIB-main +=	dbus-1 dns_sd drm expat fontconfig freetype glib-2.0
WANTLIB-main +=	gmodule-2.0 gthread-2.0 jasper kmedia2_idl lcms mad mcop mng
WANTLIB-main +=	ogg pcre pcreposix qtmcop sndio soundserver_idl tiff>=35
WANTLIB-main +=	vorbis vorbisenc vorbisfile xml2 xslt>=1.10
WANTLIB-main += com_err heimbase roken wind
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
