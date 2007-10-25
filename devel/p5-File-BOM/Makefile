# $OpenBSD: Makefile,v 1.1.1.1 2007/10/25 21:59:34 sthen Exp $
COMMENT=	utilities for handling Byte Order Marks

MODULES=	cpan
DISTNAME=	File-BOM-0.14
CATEGORIES=	devel

BUILD_DEPENDS=	::devel/p5-Readonly \
		::devel/p5-Test-Exception

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=modbuild

.include <bsd.port.mk>
