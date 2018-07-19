# $OpenBSD: Makefile,v 1.75 2018/07/19 10:31:58 sthen Exp $

BROKEN-alpha =	.got subsegment exceeds 64K (size 101480)
#BROKEN-sparc64 = cc: Internal error: Illegal instruction (program cc1)   # trying ports-gcc

COMMENT-main =	graphical network protocol analyzer, Qt user-interface
COMMENT-text =	network protocol analyzer
COMMENT-gtk =	graphical network protocol analyzer, Gtk+3 user-interface

V =		2.6.2
PORTROACH =	limitw:1,even
DISTNAME =	wireshark-$V
PKGNAME-main =	wireshark-$V
PKGNAME-text =	tshark-$V
PKGNAME-gtk =	wireshark-gtk-$V

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

cWANTLIB +=	c glib-2.0 gmodule-2.0 m pcap z

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

MULTI_PACKAGES = -text -main -gtk
PSEUDO_FLAVORS = no_x11 no_gtk no_qt
# sync with devel/spidermonkey52: qt -> polkit -> mozjs17
.if ${MACHINE_ARCH} == "i386" || ${MACHINE_ARCH} == "amd64" || \
    ${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "hppa" || \
    ${MACHINE_ARCH} == "powerpc" || ${MACHINE_ARCH} == "sparc64" || \
    ${MACHINE_ARCH} == "mips64" || ${MACHINE_ARCH} == "mips64el"
FLAVOR ?=
.else
FLAVOR ?=	no_qt
.endif
COMPILER =	base-clang ports-gcc base-gcc
MODGCC4_ARCHS =	mips64 sparc64

MODLUA_VERSION = 5.2
MODULES =	lang/lua \
		lang/python
MODLUA_SA =	Yes
MODLUA_RUNDEP =	No
MODPY_RUNDEP =	No

WANTLIB-text =	${cWANTLIB} ${MODLUA_WANTLIB}
WANTLIB-text += bcg729 cares gcrypt gnutls lz4
WANTLIB-text += maxminddb nghttp2 smi spandsp snappy ssh xml2

WANTLIB-main =	${cWANTLIB} ${COMPILER_LIBCXX}
WANTLIB-main += wireshark wiretap wscodecs wsutil
WANTLIB-main += Qt5Core Qt5Gui Qt5Multimedia Qt5PrintSupport Qt5Widgets

WANTLIB-gtk =	${cWANTLIB}
WANTLIB-gtk +=  wireshark wiretap wscodecs wsutil
WANTLIB-gtk +=  cairo gdk-3 gdk_pixbuf-2.0 gio-2.0 gobject-2.0 gtk-3
WANTLIB-gtk +=  pango-1.0 pangocairo-1.0

MASTER_SITES =		http://www.wireshark.org/download/src/all-versions/ \
			http://www.wireshark.org/download/automated/src/

WVER =			${V:C/..$//}
SUBST_VARS =		WVER

BUILD_DEPENDS +=	devel/bison \
			devel/desktop-file-utils \
			devel/git \
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
			net/libmaxminddb  \
			net/libsmi \
			security/gnutls \
			security/libgcrypt \
			security/libssh \
			telephony/bcg729 \
			telephony/spandsp \
			textproc/libxml \
			www/nghttp2

LIB_DEPENDS-main +=	${LIB_DEPENDS} \
			tshark-$V:${BUILD_PKGPATH:S/,$//},-text \
			x11/qt5/qtmultimedia \
			x11/qt5/qtsvg
# will probably be "extra" - this library dep doesn't seem to actually show
# up in the package, possibly due to as-needed, but it does link the final
# binary with -lQt5Svg if it was found during configure. I'd rather have
# an "Extra" (that may later change to a real WANTLIB) than failing builds.
WANTLIB-main +=		Qt5Svg

LIB_DEPENDS-gtk +=	tshark-$V:${BUILD_PKGPATH:S/,$//},-text \
			x11/gtk+3
# XXX gtk build still picks this up even though it doesn't show in symbols
# or objdump. problem will magically vanish when upstream remove gtk support!
BUILD_DEPENDS +=	audio/portaudio-svn

MODULES +=		devel/cmake
CONFIGURE_STYLE =	cmake
CONFIGURE_ARGS +=	-DDUMPCAP_INST_VALS=suid \
			-DCMAKE_INSTALL_MANDIR=${TRUEPREFIX}/man \
			-DCOMPILER_CAN_HANDLE_SSE4_2=false

.include <bsd.port.arch.mk>

.if ${FLAVOR:Mno_x11}
BUILD_PACKAGES := ${BUILD_PACKAGES:N-main:N-gtk}
.endif
.if ${FLAVOR:Mno_qt}
BUILD_PACKAGES := ${BUILD_PACKAGES:N-main}
.endif
.if ${BUILD_PACKAGES:M-gtk}
CONFIGURE_ARGS +=	-DBUILD_wireshark_gtk=true
.endif
.if ${BUILD_PACKAGES:M-main}
MODULES +=	x11/qt5
.else
CONFIGURE_ARGS +=	-DBUILD_wireshark=false
.endif

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
