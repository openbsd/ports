# $OpenBSD: Makefile,v 1.5 2010/10/18 17:48:01 espie Exp $

COMMENT= 	locate install data per-module

MODULES=	cpan
DISTNAME=	File-ShareDir-1.00
CATEGORIES=	devel
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-Params-Util \
		::devel/p5-Class-Inspector

.include <bsd.port.mk>
