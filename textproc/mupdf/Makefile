# $OpenBSD: Makefile,v 1.68 2016/11/04 11:35:20 sthen Exp $

SHARED_LIBS +=	mupdf		4.0
SHARED_LIBS +=	mupdfthird	0.0

COMMENT =	graphic library, pdf parser, viewer and utilities

V =		1.9a
DISTNAME =	mupdf-$V-source
PKGNAME =	mupdf-$V
REVISION =	0

CATEGORIES =	textproc x11

HOMEPAGE =	http://mupdf.com/

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# code: Affero v3 (UGH!)
# font maps: Adobe (redist ok, see headers).
# droid font: Apache.
PERMIT_PACKAGE_CDROM =	Yes

# uses pledge(2)
WANTLIB += GL X11 Xcursor Xext Xinerama Xrandr c crypto curl freetype
WANTLIB += harfbuzz jbig2dec jpeg m nghttp2 openjp2 pthread ssl z

FLAVORS=	js
FLAVOR?=

MODULES =	gcc4
MODGCC4_ARCHS =	*

# http://git.ghostscript.com/?p=mupdf.git;a=summary
MASTER_SITES =	http://mupdf.com/downloads/ \
		http://mupdf.com/downloads/archive/

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/xdg-utils
LIB_DEPENDS =	devel/harfbuzz \
		graphics/jbig2dec \
		graphics/jpeg \
		graphics/openjp2>=2.0.1 \
		net/curl

USE_GMAKE =	Yes
NO_TEST =	Yes

.if ${MACHINE_ARCH} == "hppa"
CFLAGS +=	-ffunction-sections
.endif

CFLAGS +=	-fPIC

# -I flags prepend mupdf's own, to allow building with previous ver installed
MAKE_ENV += CFLAGS="${CFLAGS} -I$(WRKSRC)/fitz -I$(WRKSRC)/pdf -I$(WRKSRC)/xps"

MAKE_FLAGS =	CC="${CC}" CXX="${CXX}" \
		HAVE_CURL=yes \
		CURL_LIB="-lcurl" \
		CURL_LIBS="-lpthread -lidn -lssl -lcurl" \
		SYS_OPENSSL_LIBS="-lssl -lcrypto" \
		LDFLAGS="${LDFLAGS}" \
		LIBmupdf_VERSION="${LIBmupdf_VERSION}" \
		LIBmupdfthird_VERSION="${LIBmupdfthird_VERSION}" \
		build= verbose=yes

FAKE_FLAGS =	NOCURL= prefix=${PREFIX} mandir=${PREFIX}/man

pre-configure:
	cd ${WRKSRC}; sed -i 's,/usr/X11R6/include,${X11BASE}/include,g' Makerules Makethird
	rm -rf ${WRKSRC}/thirdparty/{curl,freetype,harfbuzz,jbig2dec,jpeg,openjpeg,zlib} # use from ports
	#rm -rf ${WRKSRC}/thirdparty/glfw # not yet in ports, doesn't build here
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
