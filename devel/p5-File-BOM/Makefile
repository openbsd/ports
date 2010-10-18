# $OpenBSD: Makefile,v 1.4 2010/10/18 17:48:00 espie Exp $

COMMENT=	utilities for handling Byte Order Marks

MODULES=	cpan
DISTNAME=	File-BOM-0.14
REVISION=	0
CATEGORIES=	devel

RUN_DEPENDS=	::devel/p5-Readonly
REGRESS_DEPENDS=::devel/p5-Test-Exception

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=modbuild
USE_GROFF =	Yes

.include <bsd.port.mk>
