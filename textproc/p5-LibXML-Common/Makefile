# $OpenBSD: Makefile,v 1.16 2010/12/22 19:50:05 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	perl interface for several perl XML modules

DISTNAME=	XML-LibXML-Common-0.13
REVISION=	4
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
