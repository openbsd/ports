COMMENT=		extracts files from Microsoft CAB archives

DISTNAME=		cabextract-1.11
CATEGORIES=		archivers

HOMEPAGE=		https://www.cabextract.org.uk/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB=		c iconv mspack

SITES=			${HOMEPAGE}

LIB_DEPENDS=		archivers/libmspack \
			converters/libiconv

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-external-libmspack
CONFIGURE_ENV=		LDFLAGS="-L${LOCALBASE}/lib"

SEPARATE_BUILD=		Yes

.include <bsd.port.mk>
