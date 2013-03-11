# $OpenBSD: Makefile,v 1.19 2013/03/11 11:42:43 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	perl interface for several perl XML modules

DISTNAME=	XML-LibXML-Common-0.13
REVISION=	6
CATEGORIES=	textproc
USE_GROFF =	Yes

LIB_DEPENDS=	textproc/libxml

# perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m z xml2>=7

MODULES=	cpan \
		converters/libiconv

.include <bsd.port.mk>
