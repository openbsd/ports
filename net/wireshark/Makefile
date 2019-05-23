# $OpenBSD: Makefile,v 1.91 2019/05/23 13:17:13 sthen Exp $

BROKEN-alpha =	.got subsegment exceeds 64K (size 101480)

COMMENT-main =	graphical network protocol analyzer, Qt user-interface
COMMENT-text =	network protocol analyzer

V =		3.0.2
PORTROACH =	limitw:1,even
DISTNAME =	wireshark-$V
PKGNAME-main =	wireshark-$V
PKGNAME-text =	tshark-$V

SHARED_LIBS +=	wscodecs             1.0
SHARED_LIBS +=	wsutil               4.0
SHARED_LIBS +=	wiretap              4.0
SHARED_LIBS +=	wireshark            4.0

CATEGORIES =	net security x11

HOMEPAGE =	https://www.wireshark.org/

EXTRACT_SUFX =	.tar.xz

# Mostly GPLv2 or later. Some files are less restrictive.
# tools/pidl is GPLv3 or later. See COPYING.
PERMIT_PACKAGE_CDROM =	Yes

cWANTLIB +=	bcg729 c gcrypt glib-2.0 gmodule-2.0 gnutls gpg-error
cWANTLIB +=	m pcap spandsp z

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

MULTI_PACKAGES = -text -main
PSEUDO_FLAVORS = no_x11 no_qt
# sync with devel/spidermonkey52: qt -> polkit -> mozjs17
.if ${MACHINE_ARCH} == "i386" || ${MACHINE_ARCH} == "amd64" || \
    ${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "hppa" || \
    ${MACHINE_ARCH} == "powerpc" || ${MACHINE_ARCH} == "sparc64" || \
    ${MACHINE_ARCH} == "mips64" || ${MACHINE_ARCH} == "mips64el"
FLAVOR ?=
.else
FLAVOR ?=	no_qt
.endif
COMPILER =	base-clang ports-gcc

MODLUA_VERSION = 5.2
MODULES =	lang/lua \
		lang/python
MODLUA_SA =	Yes
MODLUA_RUNDEP =	No
MODPY_RUNDEP =	No

WANTLIB-text =	${cWANTLIB} ${MODLUA_WANTLIB}
WANTLIB-text += cares lz4 maxminddb nghttp2 smi snappy ssh xml2

WANTLIB-main =	${cWANTLIB} ${COMPILER_LIBCXX}
WANTLIB-main += wireshark wiretap wscodecs wsutil
# XXX the above are incorrectly listed as "Extra", cmake internal
# linkages are done with .so symlinks present, so the soname is wrong
WANTLIB-main += Qt5Core Qt5Gui Qt5Multimedia Qt5Network Qt5PrintSupport Qt5Widgets

MASTER_SITES =		https://www.wireshark.org/download/src/all-versions/ \
			https://www.wireshark.org/download/automated/src/

WVER =			${V:C/^(...).*/\1/}
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

MODULES +=		devel/cmake
CONFIGURE_STYLE =	cmake
CONFIGURE_ENV +=	WIRESHARK_VERSION_EXTRA=" from OpenBSD packages"
CONFIGURE_ARGS +=	-DCMAKE_INSTALL_MANDIR=${TRUEPREFIX}/man \
			-DCOMPILER_CAN_HANDLE_SSE4_2=false

.include <bsd.port.arch.mk>

.if ${FLAVOR:Mno_x11}
BUILD_PACKAGES := ${BUILD_PACKAGES:N-main}
.endif
.if ${BUILD_PACKAGES:M-main}
MODULES +=	x11/qt5
.else
CONFIGURE_ARGS +=	-DBUILD_wireshark=false
.endif

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
