# $OpenBSD: Makefile,v 1.50 2014/06/12 14:07:19 sthen Exp $

SHARED_ONLY =	Yes
SHARED_LIBS +=	mupdf 1.0

COMMENT =	graphic library, pdf parser, viewer and utilities

V =		1.5
DISTNAME =	mupdf-$V-source
PKGNAME =	mupdf-$V

CATEGORIES =	textproc x11

HOMEPAGE =	http://mupdf.com/

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# code: Affero v3 (UGH!)
# font maps: Adobe (redist ok, see headers).
# droid font: Apache.
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 Xext c crypto curl freetype idn jbig2dec jpeg m
WANTLIB += openjp2 pthread ssl z

# http://git.ghostscript.com/?p=mupdf.git;a=summary
MASTER_SITES =	http://mupdf.com/downloads/

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/xdg-utils
LIB_DEPENDS =	graphics/jbig2dec \
		graphics/jpeg \
		graphics/openjp2>=2.0.1 \
		net/curl

USE_GMAKE =	Yes
NO_TEST =	Yes

.if ${MACHINE_ARCH} == "hppa"
CFLAGS +=	-ffunction-sections
.endif

# -I flags prepend mupdf's own, to allow building with previous ver installed
MAKE_ENV += CFLAGS="${CFLAGS} -I$(WRKSRC)/fitz -I$(WRKSRC)/pdf -I$(WRKSRC)/xps"

MAKE_FLAGS =	CC="${CC}" CXX="${CXX}" \
		HAVE_CURL=yes \
		CURL_LIB="-lcurl" \
		CURL_LIBS="-lpthread -lidn -lssl -lcurl" \
		SYS_OPENSSL_LIBS="-lssl -lcrypto" \
		LDFLAGS="${LDFLAGS}" \
		LIBmupdf_VERSION="${LIBmupdf_VERSION}" \
		build= verbose=yes

FAKE_FLAGS =	NOCURL= prefix=${PREFIX} mandir=${PREFIX}/man

pre-configure:
	cd ${WRKSRC}/; ${SUBST_CMD} Makerules
	rm -rf ${WRKSRC}/thirdparty

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/{applications,pixmaps}
	${INSTALL_DATA} ${FILESDIR}/mupdf.xpm ${PREFIX}/share/pixmaps/
	${INSTALL_DATA} ${FILESDIR}/mupdf.desktop ${PREFIX}/share/applications/
	cd ${PREFIX}/bin; ln -s mupdf-x11 mupdf

.include <bsd.port.mk>
