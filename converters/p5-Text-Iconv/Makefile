# $OpenBSD: Makefile,v 1.22 2014/06/14 23:23:12 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	interface to iconv() codeset conversion function

DISTNAME=	Text-Iconv-1.7
REVISION=	3
CATEGORIES=	converters
MODULES=	converters/libiconv cpan

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

CONFIGURE_ARGS=	INC="-I${LOCALBASE}/include" \
		LIBS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
