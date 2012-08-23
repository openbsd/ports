# $OpenBSD: Makefile,v 1.18 2012/08/23 15:52:47 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	perl interface for several perl XML modules

DISTNAME=	XML-LibXML-Common-0.13
REVISION=	6
CATEGORIES=	textproc
USE_GROFF =	Yes

LIB_DEPENDS=	textproc/libxml

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c m z xml2>=7

MODULES=	cpan \
		converters/libiconv

.include <bsd.port.mk>
