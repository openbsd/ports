# $OpenBSD: Makefile,v 1.26 2016/09/13 11:44:07 naddy Exp $

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
