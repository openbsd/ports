# $OpenBSD: Makefile,v 1.77 2016/09/01 08:56:49 naddy Exp $

COMMENT=	toolkit for manipulation and conversion of graphic images

DISTNAME=	netpbm-10.75.01
REVISION=	0
SHARED_LIBS=	netpbm	3.1
CATEGORIES=	graphics
HOMEPAGE=	http://netpbm.sourceforge.net/

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	X11 c jasper jbig jpeg m png tiff xml2 z

MASTER_SITES=	http://shell.uugrn.org/~naddy/
EXTRACT_SUFX=	.tar.xz

LIB_DEPENDS=	graphics/tiff \
		graphics/jpeg \
		graphics/png \
		graphics/jbigkit \
		graphics/jasper \
		textproc/libxml

USE_GMAKE=	Yes
MAKE_FILE=	GNUmakefile
INSTALL_TARGET=	install.bin install.lib install.data \
		install.hdr install.staticlib

MAKE_FLAGS=	CC="${CC}" \
		LIBnetpbm_VERSION=${LIBnetpbm_VERSION}
# programs can take seed on command line
MAKE_FLAGS+=	CFLAGS_CONFIG="-Dsrand=srand_deterministic"

FAKE_FLAGS=	pkgdir="${WRKINST}${TRUEPREFIX}"

do-configure:
	cp ${FILESDIR}/config.mk ${WRKSRC}

TEST_DEPENDS=	shells/bash sysutils/coreutils
TEST_TARGET=	check
TEST_FLAGS=	pkgdir="${WRKINST}${PREFIX}" \
		resultdir="${WRKDIR}/tests" \
          	RGBDEF="${WRKINST}${PREFIX}/share/netpbm/rgb.txt"

# cp -v, head -c, mv -T, seq
pre-test:
	@for i in cp head mv seq; do \
		ln -sf ${LOCALBASE}/bin/g$$i ${WRKDIR}/bin/$$i; \
	done
	@sed -i '1 s:^.*bin/bash:#!${LOCALBASE}/bin/bash:' \
	    ${WRKSRC}/test/Execute-Tests ${WRKSRC}/test/*.test

# must run after fake
test: fake

# Get the latest release in a release series from Netpbm Subversion.
# Requires devel/subversion.
distfile:
	@REPO=https://svn.code.sf.net/p/netpbm/code; \
	SERIES=advanced; \
	REV=`svn info $$REPO/$$SERIES/version.mk | \
	    sed -n 's/Last Changed Rev: //p'`; \
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
