# $OpenBSD: Makefile,v 1.5 2010/10/18 17:48:06 espie Exp $

COMMENT= 	deferred and lazy evaluation

MODULES=	cpan
USE_GROFF =	Yes

DISTNAME=	Scalar-Defer-0.18
CATEGORIES=	devel

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-Exporter-Lite \
		::devel/p5-Class-InsideOut

.include <bsd.port.mk>
