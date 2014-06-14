# $OpenBSD: Makefile,v 1.21 2014/06/14 23:26:01 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	perl interface for several perl XML modules

DISTNAME=	XML-LibXML-Common-0.13
REVISION=	7
CATEGORIES=	textproc

LIB_DEPENDS=	textproc/libxml

# perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m z xml2>=7

MODULES=	cpan \
		converters/libiconv

.include <bsd.port.mk>
