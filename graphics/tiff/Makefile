COMMENT=	tools and library routines for working with TIFF images

DISTNAME=	tiff-4.6.0
SHARED_LIBS=	tiff	42.0	# 13.0
SHARED_LIBS+=	tiffxx	42.0	# 13.0
CATEGORIES=	graphics
REVISION=	0

SITES=		https://download.osgeo.org/libtiff/
EXTRACT_SUFX=	.tar.xz

HOMEPAGE=	https://libtiff.gitlab.io/libtiff/

MODULES =	devel/cmake
LIB_DEPENDS=	graphics/jpeg \
		archivers/xz \
		archivers/zstd
WANTLIB=	c ${COMPILER_LIBCXX} jpeg lzma m z zstd

COMPILER =	base-clang ports-gcc base-gcc
DEBUG_PACKAGES =${BUILD_PACKAGES}

# BSD
PERMIT_PACKAGE=	Yes

CONFIGURE_ARGS=	-Djbig=OFF \
		-Dlibdeflate=OFF \
		-Dwebp=OFF \
		-Dtiff-contrib=OFF \
		-Dtiff-docs=OFF \
		-Djpeg=${LOCALBASE}

#		-Dtiff-tools-unsupported=ON \ # comms/hylafax needs tiff2ps and tiff2pdf

post-install:
	${INSTALL_MAN} ${WRKSRC}/doc/man-prebuilt/*.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/doc/man-prebuilt/*.3tiff ${PREFIX}/man/man3
	for f in ${PREFIX}/man/man3/*.3tiff ; do mv $$f $${f%tiff} ; done
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tiff/manual/
	cp ${WRKSRC}/{README.md,RELEASE-DATE,LICENSE.md,TODO,VERSION,ChangeLog} ${PREFIX}/share/doc/tiff/
	cp -r ${WRKSRC}/doc/html-prebuilt/* ${PREFIX}/share/doc/tiff/manual/

.include <bsd.port.mk>
