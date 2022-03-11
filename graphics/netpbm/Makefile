COMMENT=	toolkit for manipulation and conversion of graphic images

DISTNAME=	netpbm-10.97.04
SHARED_LIBS=	netpbm	5.3
CATEGORIES=	graphics
HOMEPAGE=	http://netpbm.sourceforge.net/

PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://shell.uugrn.org/~naddy/
EXTRACT_SUFX=	.tar.xz

LIB_DEPENDS=	graphics/tiff \
		graphics/jpeg \
		graphics/png \
		graphics/jbigkit \
		graphics/jasper \
		textproc/libxml

WANTLIB=	X11 c jasper jbig jpeg m png tiff xml2 z

DEBUG_PACKAGES=	${BUILD_PACKAGES}

USE_GMAKE=	Yes
MAKE_FILE=	GNUmakefile
INSTALL_TARGET=	install.bin install.lib install.data \
		install.hdr install.staticlib

MAKE_FLAGS=	CC="${CC}" \
		LIBnetpbm_VERSION=${LIBnetpbm_VERSION}

FAKE_FLAGS=	pkgdir="${WRKINST}${TRUEPREFIX}"

do-configure:
	cp ${FILESDIR}/config.mk ${WRKSRC}

TEST_DEPENDS=	print/ghostscript/gnu \
		shells/bash
TEST_TARGET=	check
TEST_FLAGS=	pkgdir="${WRKINST}${PREFIX}" \
		resultdir="${WRKDIR}/tests" \
          	RGBDEF="${WRKINST}${PREFIX}/share/netpbm/rgb.txt"

pre-test:
# head -c
	${CC} ${CFLAGS} -o ${WRKDIR}/bin/head ${FILESDIR}/head.c
	@sed -i '1 s:^.*bin/bash:#!${LOCALBASE}/bin/bash:' \
	    ${WRKSRC}/test/Available-Testprog \
	    ${WRKSRC}/test/Execute-Tests \
	    ${WRKSRC}/test/*.test

# must run after fake
test: fake

# Get the latest release in a release series from Netpbm Subversion.
# Requires devel/subversion.
distfile:
	@REPO=https://svn.code.sf.net/p/netpbm/code; \
	SERIES=advanced; \
	REV=`svn info --show-item last-changed-revision \
            $$REPO/$$SERIES/version.mk`; \
	VERSION=`(svn cat -r$$REV $$REPO/$$SERIES/version.mk; \
	    echo 'all:'; \
	    echo '	@printf "%02d.%02d.%02d" \\'; \
	    echo '	    $${NETPBM_MAJOR_RELEASE} \\'; \
	    echo '	    $${NETPBM_MINOR_RELEASE} \\'; \
	    echo '	    $${NETPBM_POINT_RELEASE}'; \
	    ) | make -f-`; \
	svn export -r$$REV $$REPO/$$SERIES "netpbm-$$VERSION"; \
	tar cf - "netpbm-$$VERSION" | xz >"netpbm-$$VERSION".tar.xz; \
	rm -rf "netpbm-$$VERSION"

.include <bsd.port.mk>
