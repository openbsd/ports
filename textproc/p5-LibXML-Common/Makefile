# $OpenBSD: Makefile,v 1.20 2013/10/11 23:51:09 naddy Exp $

SHARED_ONLY=	Yes

COMMENT=	perl interface for several perl XML modules

DISTNAME=	XML-LibXML-Common-0.13
REVISION=	6
CATEGORIES=	textproc

LIB_DEPENDS=	textproc/libxml

# perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m z xml2>=7

MODULES=	cpan \
		converters/libiconv

.include <bsd.port.mk>
