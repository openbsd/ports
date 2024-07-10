BROKEN-alpha =	.got subsegment exceeds 64K (size 101480)

COMMENT-main =	graphical network protocol analyzer, Qt user-interface
COMMENT-text =	network protocol analyzer

DPB_PROPERTIES = parallel
V =		4.2.6
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
PERMIT_PACKAGE = Yes

MAINTAINER =	Stuart Henderson <stu.ports@spacehopper.org>

MULTI_PACKAGES = -text -main
DEBUG_PACKAGES = ${BUILD_PACKAGES}

PSEUDO_FLAVORS = no_x11

.if ${MACHINE_ARCH} == "arm"
# no qt -- won't be for m88k/sh either but those are already knocked out by COMPILER
FLAVOR ?=	no_x11
.else
FLAVOR ?=
.endif

COMPILER =	base-clang ports-gcc

MODLUA_VERSION = 5.2
MODULES =	lang/lua \
		lang/python
MODLUA_SA =	Yes
MODLUA_RUNDEP =	No
MODPY_RUNDEP =	No

cWANTLIB +=	c gcrypt glib-2.0 m pcap speexdsp

WANTLIB-text =	${cWANTLIB} ${MODLUA_WANTLIB}
WANTLIB-text += bcg729 brotlidec cares gmodule-2.0 gnutls lz4 maxminddb
WANTLIB-text += nghttp2 nghttp3 opencore-amrnb opus pcre2-8 smi snappy
WANTLIB-text += spandsp ssh xml2 z zstd

WANTLIB-main =	${cWANTLIB} ${COMPILER_LIBCXX}
WANTLIB-main += minizip wireshark wiretap wsutil
WANTLIB-main += Qt6Core Qt6Core5Compat Qt6Gui Qt6Multimedia
WANTLIB-main += Qt6PrintSupport Qt6Widgets

SITES =		https://www.wireshark.org/download/src/all-versions/

WVER =		${V:R}
SUBST_VARS =	WVER

BUILD_DEPENDS +=	devel/bison \
			devel/desktop-file-utils \
			devel/git \
			textproc/libxml \
			textproc/libxslt \
			devel/xdg-utils \
			textproc/asciidoctor
RUN_DEPENDS =		devel/desktop-file-utils \
			devel/xdg-utils \
			misc/shared-mime-info \
			x11/gtk+4,-guic
RUN_DEPENDS-text =	# empty

LIB_DEPENDS-text =	${MODLUA_LIB_DEPENDS} \
			archivers/brotli \
			archivers/lz4 \
			archivers/snappy \
			audio/opencore-amr \
			audio/opus \
			audio/speexdsp \
			devel/glib2 \
			devel/pcre2 \
			net/libcares \
			net/libmaxminddb  \
			net/libsmi \
			security/gnutls \
			security/libgcrypt \
			security/libssh \
			telephony/bcg729 \
			telephony/spandsp \
			textproc/libxml \
			www/nghttp2 \
			www/nghttp3

LIB_DEPENDS-main +=	${LIB_DEPENDS} \
			tshark-$V:${BUILD_PKGPATH:S/,$//},-text \
			archivers/minizip \
			x11/qt6/qt5compat \
			x11/qt6/qtmultimedia
# required for displaying language icons at Preferences; see a5abaa81ad9
RUN_DEPENDS-main +=	x11/qt6/qtsvg

MODULES +=		devel/cmake
CFLAGS +=		-I${X11BASE}/include
CXXFLAGS +=		-I${X11BASE}/include
CONFIGURE_STYLE =	cmake
CONFIGURE_ENV +=	WIRESHARK_VERSION_EXTRA=" from OpenBSD packages"
CONFIGURE_ARGS +=	-DCMAKE_INSTALL_MANDIR=${TRUEPREFIX}/man \
			-DUSE_qt6=true \
			-DENABLE_SBC=false \
			-DENABLE_ILBC=false \
			-DCOMPILER_CAN_HANDLE_SSE4_2=false \
			-DVCSVERSION_OVERRIDE="Git v$V packaged as ${FULLPKGNAME-main}"

.include <bsd.port.arch.mk>

# Enable LTO where suported, except on riscv64 where it fails with:
# LLVM ERROR: Function Import: link error: linking module flags 'SmallDataLimit': IDs have conflicting values in
# 'extcap/CMakeFiles/extcap-base.dir/extcap-base.c.o' and 'extcap/CMakeFiles/sshdump.dir/sshdump.c.o
.if ${PROPERTIES:Mlld} && ${MACHINE_ARCH} != "riscv64"
CONFIGURE_ARGS +=	-DENABLE_LTO=true
.endif

.if ${FLAVOR:Mno_x11}
BUILD_PACKAGES := ${BUILD_PACKAGES:N-main}
.endif
.if ${BUILD_PACKAGES:M-main}
MODULES +=	x11/qt6
.else
CONFIGURE_ARGS +=	-DBUILD_wireshark=false
.endif

.if ${MACHINE_ARCH} == "mips64" || ${MACHINE_ARCH} == "mips64el"
CXXFLAGS +=	-mxgot
.endif

.include <bsd.port.mk>
