# $OpenBSD: Makefile,v 1.44 2019/07/12 20:49:02 sthen Exp $

COMMENT =	firewall GUI
DISTNAME =	fwbuilder-5.1.0.3599
CATEGORIES =	net security
REVISION =	7

HOMEPAGE =	http://www.fwbuilder.org/

# GPLv2+ mostly, some code under BSD-like
PERMIT_PACKAGE =	Yes

WANTLIB += c crypto iconv m netsnmp QtGui QtNetwork
WANTLIB += lzma pthread ${COMPILER_LIBCXX} util xml2 xslt z
WANTLIB += ICE SM X11 Xext Xi Xinerama Xrender fontconfig freetype

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=fwbuilder/}

# .orig produces too much spam in tests directories
PATCHORIG =		.ports.orig

AUTOMAKE_VERSION =	1.10
AUTOCONF_VERSION =	2.63
AUTORECONF =		sh autogen.sh

CONFIGURE_STYLE =	autoreconf

BUILD_DEPENDS +=devel/cppunit
RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

COPTS =		${DEBUG}

CONFIGURE_ARGS +=	--with-docdir=${TRUEPREFIX}/share/doc/fwbuilder \
			--with-templatedir=${TRUEPREFIX}/share/fwbuilder \
			--with-qtdir=${MODQT_QTDIR} \
			--with-qmake=qmake4 \
			--without-distcc
MAKE_ENV +=		QMAKE=${MODQT_QTDIR}/bin/qmake \
			CXXFLAGS="${CXXFLAGS}" \
			COPTS="${COPTS}" \
			LDFLAGS="${LDFLAGS}"

USE_LIBTOOL =	gnu
MODULES =	x11/qt4
DESTDIRNAME =	INSTALL_ROOT
LIB_DEPENDS =	converters/libiconv \
		net/net-snmp \
		textproc/libxml \
		textproc/libxslt \
		x11/qt4
		
TEST_DEPENDS =	${FULLPKGNAME}:${BUILD_PKGPATH}
TEST_TARGET =	tests
TEST_ENV +=		COPTS="${COPTS}"
TEST_IS_INTERACTIVE =	X11

FAKE_FLAGS =	INSTALL_PROGRAM="${INSTALL_PROGRAM}" \
		INSTALL_FILE="${INSTALL_DATA}"

post-install:
	cd ${WRKSRC}/src/res/Icons && find . -type d -mindepth 1 -maxdepth 1 | \
		while read D; do \
			${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/$$D; \
			${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/$$D/apps; \
		done

	cd ${WRKSRC}/src/res/Icons && find . -name '*.png' | \
		while read F; do \
			${INSTALL_DATA} $$F \
				${PREFIX}/share/icons/hicolor/`dirname $$F`/apps/`basename $$F`; \
		done

.include <bsd.port.mk>
