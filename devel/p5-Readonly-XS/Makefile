# $OpenBSD: Makefile,v 1.7 2010/10/18 17:48:05 espie Exp $

COMMENT= 	create readonly variables faster

MODULES=	cpan
SHARED_ONLY=	Yes
DISTNAME=	Readonly-XS-1.05
REVISION=	0
CATEGORIES=	devel
USE_GROFF =	Yes

# perl licence
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-Readonly->=1.02:devel/p5-Readonly

.include <bsd.port.mk>
