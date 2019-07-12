# $OpenBSD: Makefile,v 1.23 2019/07/12 20:44:07 sthen Exp $

COMMENT=		graphical representation of CVS repository

DISTNAME=		cvsgraph-1.7.0
CATEGORIES=		devel
HOMEPAGE=		http://www.akhphd.au.dk/~bertho/cvsgraph
REVISION=		0

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += c fontconfig freetype gd iconv jpeg m png pthread tiff webp
WANTLIB += z

MASTER_SITES=		${HOMEPAGE}/release/

LIB_DEPENDS=		converters/libiconv \
			graphics/gd

ALL_TARGET=

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-gd-inc=${LOCALBASE}/include \
			--with-gd-lib=${LOCALBASE}/lib
CFLAGS +=		-I${LOCALBASE}/include

NO_TEST=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/cvsgraph
	${INSTALL_DATA} ${WRKSRC}/cvsgraph.conf \
			${PREFIX}/share/examples/cvsgraph

.include <bsd.port.mk>
