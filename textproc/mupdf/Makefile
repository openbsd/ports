# $OpenBSD: Makefile,v 1.92 2019/09/17 09:22:51 tb Exp $

COMMENT =	graphic library, pdf parser, viewer and utilities

V =		1.16.1
DISTNAME =	mupdf-$V-source
PKGNAME =	mupdf-${V:S/-rc/rc/}
REVISION =	0

CATEGORIES =	textproc x11

HOMEPAGE =	https://mupdf.com/

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# code: Affero v3 (UGH!)
# font maps: Adobe (redist ok, see headers).
# droid font: Apache.
PERMIT_PACKAGE =	Yes

# uses pledge(2)
WANTLIB += X11 Xext c curl freetype harfbuzz jbig2dec jpeg m
WANTLIB += openjp2 pthread z crypto

FLAVORS =	js
FLAVOR ?=

# http://git.ghostscript.com/?p=mupdf.git;a=summary
MASTER_SITES =	https://mupdf.com/downloads/archive/

# https://marc.info/?l=openbsd-ports&m=156448467232400&w=2
# possible alignment issue?
MODULES +=	gcc4
MODGCC4_ARCHS =	armv7
MODGCC4_LANGS =	c

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/xdg-utils
LIB_DEPENDS =	devel/harfbuzz \
		graphics/jbig2dec \
		graphics/jpeg \
		graphics/openjp2>=2.0.1 \
		net/curl

USE_GMAKE =	Yes
NO_TEST =	Yes

ALL_TARGET =	all

MAKE_FLAGS =	CC="${CC}" CXX="${CXX}" \
		XCFLAGS="${CFLAGS} -fPIC -I$(WRKSRC)/fitz -I$(WRKSRC)/pdf -I$(WRKSRC)/xps -I${X11BASE}/include" \
		LDFLAGS="${LDFLAGS}" LLD_EMUL="${LLD_EMUL}" \
		USE_SYSTEM_LIBS=yes \
		build=release verbose=yes

FAKE_FLAGS =	prefix=${PREFIX} mandir=${PREFIX}/man

pre-configure:
	cd ${WRKSRC}; sed -i 's,/usr/X11R6/include,${X11BASE}/include,g' Makerules Makethird
# keeping internal copy of lcms2 which is a fork with API changes
# http://git.ghostscript.com/?p=thirdparty-lcms2.git;a=blob_plain;f=doc/WhyThisFork.txt;hb=lcms2mt
	rm -r ${WRKSRC}/thirdparty/{curl,freeglut,freetype,harfbuzz,jbig2dec,libjpeg,openjpeg,zlib} # use from ports
.if !${FLAVOR:Mjs}
	rm -r ${WRKSRC}/thirdparty/mujs # not building with javascript support
CFLAGS +=	-DFZ_ENABLE_JS=0
# disable mupdf-gl; it uses some parts of mujs internally so
# js support can't be knocked out completely
MAKE_FLAGS +=	HAVE_GLUT=No
.else
MAKE_FLAGS +=	ENABLE_MUJS=yes
WANTLIB +=	GL glut
LIB_DEPENDS +=	graphics/freeglut
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/{applications,pixmaps}
	${INSTALL_DATA} ${FILESDIR}/mupdf.xpm ${PREFIX}/share/pixmaps/
	${INSTALL_DATA} ${FILESDIR}/mupdf.desktop ${PREFIX}/share/applications/
	cd ${PREFIX}/bin; ln -s mupdf-x11 mupdf
	mv ${PREFIX}/share/doc/mupdf/examples ${PREFIX}/share/examples/mupdf
.if !${FLAVOR:Mjs}
	rm ${PREFIX}/share/examples/mupdf/*.js
.endif

.include <bsd.port.mk>
