# $OpenBSD: Makefile,v 1.3 2009/09/10 01:16:40 bluhm Exp $

COMMENT=	perl module to generate random data

DISTNAME=	Data-Random-0.05
CATEGORIES=	devel

MAINTAINER=	Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	cpan
REGRESS_DEPENDS=::devel/p5-Date-Calc \
		::graphics/p5-GD

.include <bsd.port.mk>
