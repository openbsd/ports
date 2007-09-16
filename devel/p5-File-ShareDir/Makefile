# $OpenBSD: Makefile,v 1.3 2007/09/16 02:53:06 merdely Exp $

COMMENT= 	locate install data per-module

MODULES=	cpan
DISTNAME=	File-ShareDir-0.05
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-Params-Util \
		::devel/p5-Class-Inspector

.include <bsd.port.mk>
