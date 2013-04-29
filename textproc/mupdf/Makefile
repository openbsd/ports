# $OpenBSD: Makefile,v 1.42 2013/04/29 12:54:00 sthen Exp $

COMMENT =	graphic library, pdf parser, viewer and utilities

V =		1.2
DISTNAME =	mupdf-$V-source
EXTRACT_SUFX =	.zip
PKGNAME =	mupdf-${V:S/-rc/rc/}
REVISION =	2

CATEGORIES =	textproc x11

HOMEPAGE =	http://mupdf.com/

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# code: Affero v3 (UGH!)
# font maps: Adobe (redist ok, see headers).
# droid font: Apache.
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	X11 Xext c freetype jbig2dec jpeg>=62 m openjpeg z

# http://git.ghostscript.com/?p=mupdf.git;a=summary
MASTER_SITES =	${HOMEPAGE}download/ \
		${HOMEPAGE}download/archive/

RUN_DEPENDS =	devel/desktop-file-utils
LIB_DEPENDS =	graphics/jbig2dec \
		graphics/jpeg \
		graphics/openjpeg>=1.5.0

USE_GMAKE =	Yes
NO_TEST =	Yes

.if ${MACHINE_ARCH} == "hppa"
CFLAGS +=	-ffunction-sections
.endif

# -I flags prepend mupdf's own, to allow building with previous ver installed
MAKE_ENV +=	CFLAGS="${CFLAGS} -I$(WRKSRC)/fitz -I$(WRKSRC)/pdf -I$(WRKSRC)/xps" \
		LDFLAGS="${LDFLAGS}" CC=${CC} CXX=${CXX} build= verbose=1

FAKE_FLAGS =	prefix=${PREFIX} mandir=${PREFIX}/man

pre-configure:
	${SUBST_CMD} ${WRKSRC}/debian/mupdf.pc
	rm -rf ${WRKSRC}/thirdparty

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/ \
	    ${PREFIX}/share/application-registry/ ${PREFIX}/share/pixmaps \
	    ${PREFIX}/lib/pkgconfig/
	${INSTALL_DATA} ${WRKSRC}/debian/mupdf.xpm ${PREFIX}/share/pixmaps/
	${INSTALL_DATA} ${WRKSRC}/debian/mupdf.applications \
	    ${PREFIX}/share/application-registry/
	${INSTALL_DATA} ${WRKSRC}/debian/mupdf.desktop \
	    ${PREFIX}/share/applications/
	${INSTALL_DATA} ${WRKSRC}/debian/mupdf.pc \
	    ${PREFIX}/lib/pkgconfig/mupdf.pc

.include <bsd.port.mk>
