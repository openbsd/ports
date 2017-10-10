# $OpenBSD: Makefile,v 1.77 2017/10/10 12:33:49 sthen Exp $

SHARED_LIBS +=	mupdf		6.0

COMMENT =	graphic library, pdf parser, viewer and utilities

V =		1.11
REVISION =	2
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
WANTLIB += GL X11 Xext c crypto curl freetype glfw harfbuzz jbig2dec
WANTLIB += jpeg m openjp2 pthread ssl z

FLAVORS=	js
FLAVOR?=

# http://git.ghostscript.com/?p=mupdf.git;a=summary
MASTER_SITES =	http://mupdf.com/downloads/ \
		http://mupdf.com/downloads/archive/

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/xdg-utils
LIB_DEPENDS =	devel/harfbuzz \
		graphics/glfw \
		graphics/jbig2dec \
		graphics/jpeg \
		graphics/openjp2>=2.0.1 \
		net/curl

USE_GMAKE =	Yes
NO_TEST =	Yes

MAKE_FLAGS =	CC="${CC}" CXX="${CXX}" \
		XCFLAGS="${CFLAGS} -fPIC -I$(WRKSRC)/fitz -I$(WRKSRC)/pdf -I$(WRKSRC)/xps" \
		HAVE_CURL=yes \
		HAVE_GLFW=yes \
		SYS_GLFW_CFLAGS="-I${X11BASE}/include" \
		SYS_GLFW_LIBS="-L${LOCALBASE}/lib -L${X11BASE}/lib -lglfw -lGL" \
		SYS_OPENSSL_LIBS="-lssl -lcrypto" \
		LDFLAGS="${LDFLAGS}" \
		LIBmupdf_VERSION="${LIBmupdf_VERSION}" \
		build=release verbose=yes

FAKE_FLAGS =	NOCURL= prefix=${PREFIX} mandir=${PREFIX}/man

pre-configure:
	cd ${WRKSRC}; sed -i 's,/usr/X11R6/include,${X11BASE}/include,g' Makerules Makethird
	rm -rf ${WRKSRC}/thirdparty/{curl,freetype,harfbuzz,jbig2dec,libjpeg,openjpeg,zlib,glfw} # use from ports
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

.include <bsd.port.mk>
