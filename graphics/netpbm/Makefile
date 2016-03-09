# $OpenBSD: Makefile,v 1.74 2016/03/09 18:22:52 naddy Exp $

COMMENT=	toolkit for converting images between different formats

DISTNAME=	netpbm-10.35.97
SHARED_LIBS=	netpbm	2.0
CATEGORIES=	graphics
HOMEPAGE=	http://netpbm.sourceforge.net/

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xau Xdmcp c jasper jbig jpeg m png pthread pthread-stubs
WANTLIB += tiff xcb xml2 z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=netpbm/}
EXTRACT_SUFX=	.tgz

MODULES=	converters/libiconv
LIB_DEPENDS=	graphics/tiff \
		graphics/jpeg \
		graphics/png \
		graphics/jbigkit>=2.0 \
		graphics/jasper \
		textproc/libxml

USE_GMAKE=	Yes
MAKE_FILE=	GNUmakefile
ALL_TARGET=
INSTALL_TARGET=	install.bin install.lib install.data \
		install.hdr install.staticlib

MAKE_FLAGS=	CC="${CC}" \
		LIBnetpbm_VERSION=${LIBnetpbm_VERSION}
FAKE_FLAGS=	PKGDIR="${WRKINST}${TRUEPREFIX}"

pre-build:
	${SUBST_CMD} ${WRKSRC}/pm_config.in.h
	cp ${FILESDIR}/Makefile.config.OpenBSD ${WRKSRC}/Makefile.config
# Missing in some releases
	cd ${WRKSRC}; buildtools/stamp-date >lib/compile.h

NO_TEST=	Yes

.include <bsd.port.mk>
