# $OpenBSD: Makefile,v 1.59 2017/10/11 14:42:34 sthen Exp $

BROKEN-alpha =	.got subsegment exceeds 64K (size 101480)
BROKEN-sparc64 = cc: Internal error: Illegal instruction (program cc1)

COMMENT-main =	graphical network protocol analyzer, Qt user-interface
COMMENT-text =	network protocol analyzer
COMMENT-gtk =	graphical network protocol analyzer, Gtk+3 user-interface

WVER =		2.4.2
PORTROACH =	limitw:1,even
DISTNAME =	wireshark-${WVER}
PKGNAME-main =	wireshark-${WVER}
PKGNAME-text =	tshark-${WVER}
PKGNAME-gtk =	wireshark-gtk-${WVER}

SHARED_LIBS +=	wscodecs             0.0      # 0.0
SHARED_LIBS +=	wsutil               3.0      # 5.0
SHARED_LIBS +=	wiretap              3.0      # 4.5
SHARED_LIBS +=	wireshark            3.0      # 5.5

CATEGORIES =	net security x11

HOMEPAGE =	http://www.wireshark.org/

EXTRACT_SUFX =	.tar.xz

# Mostly GPLv2 or later. Some files are less restrictive.
# tools/pidl is GPLv3 or later. See COPYING.
PERMIT_PACKAGE_CDROM =	Yes

cWANTLIB +=	c glib-2.0 m pcap z

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

MULTI_PACKAGES = -text -main -gtk

MODLUA_VERSION = 5.2
MODULES =	lang/lua \
		lang/python \
		x11/qt5
MODLUA_SA =	Yes
MODLUA_RUNDEP =	No
MODPY_RUNDEP =	No

WANTLIB-text =	${cWANTLIB} ${MODLUA_WANTLIB}
WANTLIB-text += GeoIP cares gcrypt gmodule-2.0 gnutls gpg-error lz4
WANTLIB-text += nghttp2 smi spandsp snappy ssh xml2

WANTLIB-main =	${cWANTLIB} ${COMPILER_LIBCXX}
WANTLIB-main += pthread wireshark wiretap wscodecs wsutil
WANTLIB-main += Qt5Core Qt5Gui Qt5Multimedia Qt5PrintSupport Qt5Widgets

WANTLIB-gtk =	${cWANTLIB}
WANTLIB-gtk += cairo gdk-3 gdk_pixbuf-2.0 gio-2.0 gobject-2.0 gtk-3
WANTLIB-gtk += pango-1.0 pangocairo-1.0 portaudio wireshark wiretap
WANTLIB-gtk += wscodecs wsutil

MASTER_SITES =		http://www.wireshark.org/download/src/all-versions/ \
			http://www.wireshark.org/download/automated/src/

SUBST_VARS =		WVER

BUILD_DEPENDS +=	devel/bison \
			devel/desktop-file-utils \
			textproc/libxml \
			textproc/libxslt \
			devel/xdg-utils \
			textproc/asciidoc
RUN_DEPENDS =		devel/desktop-file-utils \
			devel/xdg-utils \
			misc/shared-mime-info \
			x11/gtk+3,-guic
RUN_DEPENDS-text =	# empty

LIB_DEPENDS-text =	${MODLUA_LIB_DEPENDS} \
			archivers/lz4 \
			archivers/snappy \
			devel/glib2 \
			net/libcares \
			net/libsmi \
			net/GeoIP  \
			security/gnutls \
			security/libgcrypt \
			security/libssh \
			telephony/spandsp \
			textproc/libxml \
			www/nghttp2

LIB_DEPENDS-main +=	${LIB_DEPENDS} \
			tshark-${WVER}:${BUILD_PKGPATH:S/,$//},-text \
			x11/qt5/qtmultimedia \
			x11/qt5/qtsvg
# will probably be "extra" - this library dep doesn't seem to actually show
# up in the package, possibly due to as-needed, but it does link the final
# binary with -lQt5Svg if it was found during configure. I'd rather have
# an "Extra" (that may later change to a real WANTLIB) than failing builds.
WANTLIB-main +=		Qt5Svg

LIB_DEPENDS-gtk +=	tshark-${WVER}:${BUILD_PKGPATH:S/,$//},-text \
			x11/gtk+3 \
			audio/portaudio-svn

MODULES +=		devel/cmake
CONFIGURE_STYLE =	cmake
CONFIGURE_ARGS =	-DBUILD_wireshark_gtk=true \
			-DDUMPCAP_INST_VALS=suid \
			-DCMAKE_INSTALL_MANDIR=${TRUEPREFIX}/man \
			-DCOMPILER_CAN_HANDLE_SSE4_2=false \
			-DSH_EXECUTABLE=/bin/ksh

NO_TEST =	Yes

.if ${MACHINE_ARCH:Mpowerpc}
CONFIGURE_ENV += LDFLAGS="-Wl,--relax"
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/wireshark.desktop ${PREFIX}/share/applications/
.for _s in 16 24 32 48 64 128 256
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/${_s}x${_s}/{apps,mimetypes}
	${INSTALL_DATA} ${WRKSRC}/image/wsicon${_s}.png ${PREFIX}/share/icons/hicolor/${_s}x${_s}/apps/wireshark.png
	${INSTALL_DATA} ${WRKSRC}/image/WiresharkDoc-${_s}.png ${PREFIX}/share/icons/hicolor/${_s}x${_s}/mimetypes/application-wireshark-doc.png
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/scalable/apps
	${INSTALL_DATA} ${WRKSRC}/image/wsicon.svg ${PREFIX}/share/icons/hicolor/scalable/apps/wireshark.svg

.include <bsd.port.mk>
