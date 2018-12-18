# $OpenBSD: Makefile,v 1.1.1.1 2018/12/18 09:20:20 bentley Exp $

COMMENT=	interface to iconv() codeset conversion function

DISTNAME=	Text-Iconv-1.7
REVISION=	5
CATEGORIES=	converters
MODULES=	cpan

# perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c iconv perl

LIB_DEPENDS=	converters/libiconv

CONFIGURE_ARGS=	INC="-I${LOCALBASE}/include" \
		LIBS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
