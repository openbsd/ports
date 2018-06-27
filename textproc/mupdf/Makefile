# $OpenBSD: Makefile,v 1.80 2018/06/27 21:04:04 espie Exp $

SHARED_LIBS +=	mupdf		7.0

COMMENT =	graphic library, pdf parser, viewer and utilities

V =		1.13.0
REVISION =	1
DISTNAME =	mupdf-$V-source
PKGNAME =	mupdf-$V

CATEGORIES =	textproc x11

HOMEPAGE =	http://mupdf.com/

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# code: Affero v3 (UGH!)
# font maps: Adobe (redist ok, see headers).
# droid font: Apache.
PERMIT_PACKAGE_CDROM =	Yes

# uses pledge(2)
WANTLIB += GL X11 Xext c crypto curl freetype glut harfbuzz jbig2dec
WANTLIB += jpeg m openjp2 pthread ssl z

FLAVORS=	js
FLAVOR?=

# http://git.ghostscript.com/?p=mupdf.git;a=summary
MASTER_SITES =	http://mupdf.com/downloads/ \
		http://mupdf.com/downloads/archive/

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/xdg-utils
LIB_DEPENDS =	devel/harfbuzz \
		graphics/freeglut \
		graphics/jbig2dec \
		graphics/jpeg \
		graphics/openjp2>=2.0.1 \
		net/curl

USE_GMAKE =	Yes
NO_TEST =	Yes

ALL_TARGET =	all extra

MAKE_FLAGS =	CC="${CC}" CXX="${CXX}" \
		XCFLAGS="${CFLAGS} -fPIC -I$(WRKSRC)/fitz -I$(WRKSRC)/pdf -I$(WRKSRC)/xps -I${X11BASE}/include" \
		SYS_OPENSSL_LIBS="-lssl -lcrypto" \
		LDFLAGS="${LDFLAGS}" \
		LIBmupdf_VERSION="${LIBmupdf_VERSION}" \
		build=release verbose=yes

FAKE_FLAGS =	prefix=${PREFIX} mandir=${PREFIX}/man

pre-configure:
	cd ${WRKSRC}; sed -i 's,/usr/X11R6/include,${X11BASE}/include,g' Makerules Makethird
	rm -rf ${WRKSRC}/thirdparty/{curl,freetype,harfbuzz,jbig2dec,libjpeg,openjpeg,zlib,freeglut} # use from ports
.if !${FLAVOR:Mjs}
	rm -rf ${WRKSRC}/thirdparty/mujs # not building with javascript support
.else
CFLAGS +=	-DWITH_JS
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/{applications,pixmaps}
	${INSTALL_DATA} ${FILESDIR}/mupdf.xpm ${PREFIX}/share/pixmaps/
	${INSTALL_DATA} ${FILESDIR}/mupdf.desktop ${PREFIX}/share/applications/
	cd ${PREFIX}/bin; ln -s mupdf-x11 mupdf
	${INSTALL_PROGRAM} ${WRKSRC}/build/release/mupdf-x11-curl ${PREFIX}/bin

.include <bsd.port.mk>
