# $OpenBSD: Makefile,v 1.4 2009/09/11 18:13:06 naddy Exp $

COMMENT=	perl module to generate random data

DISTNAME=	Data-Random-0.05
PKGNAME=	p5-${DISTNAME}p0
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
