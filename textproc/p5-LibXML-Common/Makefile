# $OpenBSD: Makefile,v 1.17 2011/09/16 11:41:41 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	perl interface for several perl XML modules

DISTNAME=	XML-LibXML-Common-0.13
REVISION=	5
CATEGORIES=	textproc
USE_GROFF =	Yes

LIB_DEPENDS=	textproc/libxml

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	cpan \
		converters/libiconv

WANTLIB=	m z  xml2>=7

.include <bsd.port.mk>
