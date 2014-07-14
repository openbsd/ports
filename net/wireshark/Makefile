# $OpenBSD: Makefile,v 1.1.1.1 2014/07/14 08:44:51 landry Exp $

COMMENT-main =	graphical network protocol analyzer
COMMENT-text =	network protocol analyzer

WVER =		1.10.8
DISTNAME =	wireshark-${WVER}
PKGNAME-main =	wireshark-${WVER}
PKGNAME-text =	tshark-${WVER}
SHARED_ONLY =	Yes

SHARED_LIBS +=  wsutil               0.0      # 1.0
SHARED_LIBS +=  wiretap              0.0      # 1.0
SHARED_LIBS +=  wireshark            0.0      # 1.0

CATEGORIES =	net security x11

HOMEPAGE =	http://www.wireshark.org/

EXTRACT_SUFX =	.tar.bz2

USE_GMAKE =	Yes

# Mostly GPLv2 or later. Some files are less restrictive.
# tools/pidl is GPLv3 or later. See COPYING.
PERMIT_PACKAGE_CDROM =	Yes

MODLUA_VERSION =	5.2
MODULES =	lang/lua
MODLUA_SA =	Yes

WANTLIB +=	c glib-2.0 m pcap pthread z

WANTLIB-text +=	${WANTLIB} ${MODLUA_WANTLIB} GeoIP cares gcrypt gmodule-2.0
WANTLIB-text +=	gnutls gpg-error smi

WANTLIB-main +=	${WANTLIB} wireshark wiretap wsutil
WANTLIB-main +=	cairo gdk_pixbuf-2.0 gmodule-2.0 gobject-2.0
WANTLIB-main +=	pango-1.0 pangocairo-1.0 portaudio
WANTLIB-main +=	gdk-3 gtk-3

MULTI_PACKAGES =	-text -main

MASTER_SITES =	http://www.wireshark.org/download/src/all-versions/ \
		http://www.wireshark.org/download/automated/src/

SUBST_VARS =	WVER

LIB_DEPENDS =

LIB_DEPENDS-text =	${LIB_DEPENDS} \
		${MODLUA_LIB_DEPENDS} \
		devel/glib2 \
		net/libcares \
		net/libsmi \
		net/GeoIP  \
		security/gnutls \
		security/libgcrypt

LIB_DEPENDS-main =	${LIB_DEPENDS} \
		tshark-${WVER}:${BUILD_PKGPATH:S/,$//},-text \
		x11/gtk+3 \
		audio/portaudio-svn

LIBTOOL_FLAGS +=	--tag=disable-static

CONFIGURE_STYLE =	gnu
SEPARATE_BUILD =	Yes

CONFIGURE_ARGS =	${CONFIGURE_SHARED} \
		--with-dumpcap-group=_wireshark \
		--enable-setuid-install \
		--with-gtk3=yes \
		--with-ssl

CONFIGURE_ENV =	CPPFLAGS="-DGDK_VERSION_MIN_REQUIRED=GDK_VERSION_3_0 -I${LOCALBASE}/include/lua-${MODLUA_VERSION}"

NO_TEST =	Yes

post-install:
	@find ${PREFIX}/lib/wireshark -name '*.la' -print0 | xargs -r0 rm

.include <bsd.port.mk>
