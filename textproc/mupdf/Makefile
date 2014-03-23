# $OpenBSD: Makefile,v 1.47 2014/03/23 18:17:35 kili Exp $

COMMENT =	graphic library, pdf parser, viewer and utilities

V =		1.3
DISTNAME =	mupdf-$V-source
PKGNAME =	mupdf-${V:S/-rc/rc/}
REVISION =	3

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
MASTER_SITES =	http://mupdf.googlecode.com/files/

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/xdg-utils
LIB_DEPENDS =	graphics/jbig2dec \
		graphics/jpeg \
		graphics/openjp2 \
		net/curl

USE_GMAKE =	Yes
NO_TEST =	Yes

.if ${MACHINE_ARCH} == "hppa"
CFLAGS +=	-ffunction-sections
.endif

# -I flags prepend mupdf's own, to allow building with previous ver installed
MAKE_ENV += CFLAGS="${CFLAGS} -I$(WRKSRC)/fitz -I$(WRKSRC)/pdf -I$(WRKSRC)/xps"

MAKE_FLAGS =	NOCURL= \
		CC="${CC}" CXX="${CXX}" \
		CURL_LIB="-lcurl" \
		CURL_LIBS="-lpthread -lidn -lssl -lcurl" \
		SYS_OPENSSL_LIBS="-lssl -lcrypto" \
		LDFLAGS="${LDFLAGS}" \
		build= verbose=1

FAKE_FLAGS =	NOCURL= prefix=${PREFIX} mandir=${PREFIX}/man

pre-configure:
	cd ${WRKSRC}/; ${SUBST_CMD} Makerules platform/debian/mupdf.pc
	rm -rf ${WRKSRC}/thirdparty

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/ \
	    ${PREFIX}/share/application-registry/ ${PREFIX}/share/pixmaps \
	    ${PREFIX}/lib/pkgconfig/
.for a b in mupdf.xpm share/pixmaps \
  mupdf.applications share/application-registry \
  mupdf.desktop share/applications \
  mupdf.pc lib/pkgconfig
	${INSTALL_DATA} ${WRKSRC}/platform/debian/$a ${PREFIX}/$b
.endfor
	cd ${PREFIX}/bin; ln -s mupdf-x11 mupdf

.include <bsd.port.mk>
