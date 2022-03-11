COMMENT=	interface to iconv() codeset conversion function

DISTNAME=	Text-Iconv-1.7
REVISION=	6
CATEGORIES=	converters
MODULES=	cpan

# perl
PERMIT_PACKAGE=	Yes

WANTLIB += c iconv perl

LIB_DEPENDS=	converters/libiconv

CONFIGURE_ARGS=	INC="-I${LOCALBASE}/include" \
		LIBS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
