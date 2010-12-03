# $OpenBSD: Makefile,v 1.7 2010/12/03 11:44:31 ajacoutot Exp $

COMMENT= 	locate install data per-module

MODULES=	cpan
DISTNAME=	File-ShareDir-1.00
REVISION=	0
CATEGORIES=	devel
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	devel/p5-Params-Util \
		devel/p5-Class-Inspector

.include <bsd.port.mk>
