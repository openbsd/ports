# $OpenBSD: Makefile,v 1.27 2015/11/20 19:58:50 sthen Exp $

# XXX should add pledge to dumpcap.
# XXX the Qt UI (upstream default) is broken here; segfault at startup.

BROKEN-alpha =	.got subsegment exceeds 64K (size 101480)
BROKEN-sparc64 = cc: Internal error: Illegal instruction (program cc1)
COMMENT-main =	graphical network protocol analyzer
COMMENT-text =	network protocol analyzer

WVER =		2.0.0
PORTROACH =	limitw:1,even
DISTNAME =	wireshark-${WVER}
PKGNAME-main =	wireshark-${WVER}
PKGNAME-text =	tshark-${WVER}
SHARED_ONLY =	Yes

SHARED_LIBS +=	wsutil               2.0      # 5.0
SHARED_LIBS +=	wiretap              2.0      # 4.5
SHARED_LIBS +=	wireshark            2.0      # 5.5

CATEGORIES =	net security x11

HOMEPAGE =	http://www.wireshark.org/

EXTRACT_SUFX =	.tar.bz2

USE_GMAKE =	Yes

# Mostly GPLv2 or later. Some files are less restrictive.
# tools/pidl is GPLv3 or later. See COPYING.
PERMIT_PACKAGE_CDROM =	Yes

cWANTLIB +=	c glib-2.0 m pcap pthread z

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

MULTI_PACKAGES =	-text -main

MODLUA_VERSION = 5.2
MODULES =	lang/lua \
		lang/python \
		x11/qt5
MODLUA_SA =	Yes
MODLUA_RUNDEP =	No
MODPY_RUNDEP =	No

WANTLIB-text +=	${cWANTLIB} ${MODLUA_WANTLIB}
WANTLIB-text +=	GeoIP cares gcrypt gmodule-2.0 gnutls gpg-error smi

#WANTLIB-main +=	${cWANTLIB} ${WANTLIB}
#WANTLIB-main +=	wireshark wiretap wsutil gmodule-2.0 stdc++
#WANTLIB-main +=	Qt5Core Qt5Gui Qt5Multimedia Qt5PrintSupport Qt5Widgets
WANTLIB-main +=	${cWANTLIB} wireshark wiretap wsutil
WANTLIB-main +=	cairo gdk_pixbuf-2.0 gdk-3 gmodule-2.0 gobject-2.0 gtk-3
WANTLIB-main +=	pango-1.0 pangocairo-1.0 portaudio 

MASTER_SITES =		http://www.wireshark.org/download/src/all-versions/ \
			http://www.wireshark.org/download/automated/src/

SUBST_VARS =		WVER

BUILD_DEPENDS =		devel/bison \
			devel/desktop-file-utils \
			devel/libxml \
			devel/libxslt \
			devel/xdg-utils \
			textproc/asciidoc
RUN_DEPENDS-main =	${RUN_DEPENDS} \
			devel/desktop-file-utils \
			devel/xdg-utils \
			misc/shared-mime-info \
			x11/gtk+3,-guic

LIB_DEPENDS-text =	${MODLUA_LIB_DEPENDS} \
			devel/glib2 \
			net/libcares \
			net/libsmi \
			net/GeoIP  \
			security/gnutls \
			security/libgcrypt

LIB_DEPENDS-main =	tshark-${WVER}:${BUILD_PKGPATH:S/,$//},-text \
			x11/gtk+3 \
			audio/portaudio-svn

MODULES +=		devel/cmake
CONFIGURE_STYLE =	cmake
CONFIGURE_ARGS =	-DDUMPCAP_INST_VALS=suid \
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
	mv ${PREFIX}/bin/wireshark ${PREFIX}/bin/wireshark-qt
	ln -s wireshark-gtk ${PREFIX}/bin/wireshark

.include <bsd.port.mk>
