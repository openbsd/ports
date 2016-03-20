# $OpenBSD: Makefile,v 1.25 2016/03/20 19:56:08 naddy Exp $

COMMENT=	interface to iconv() codeset conversion function

DISTNAME=	Text-Iconv-1.7
REVISION=	5
CATEGORIES=	converters
MODULES=	converters/libiconv cpan

# perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c perl

CONFIGURE_ARGS=	INC="-I${LOCALBASE}/include" \
		LIBS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
