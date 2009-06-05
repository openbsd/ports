# $OpenBSD: Makefile,v 1.5 2009/06/05 13:12:32 dhill Exp $

COMMENT= 	create readonly variables faster

MODULES=	cpan
SHARED_ONLY=	Yes
DISTNAME=	Readonly-XS-1.05
CATEGORIES=	devel

# perl licence
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-Readonly->=1.02:devel/p5-Readonly

.include <bsd.port.mk>
