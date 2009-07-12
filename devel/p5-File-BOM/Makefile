# $OpenBSD: Makefile,v 1.2 2009/07/12 19:57:51 sthen Exp $

COMMENT=	utilities for handling Byte Order Marks

MODULES=	cpan
DISTNAME=	File-BOM-0.14
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	devel

RUN_DEPENDS=	::devel/p5-Readonly
REGRESS_DEPENDS=::devel/p5-Test-Exception

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=modbuild

.include <bsd.port.mk>
