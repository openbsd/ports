# $OpenBSD: Makefile,v 1.6 2010/10/18 17:47:58 espie Exp $

COMMENT=	perl module to generate random data

DISTNAME=	Data-Random-0.05
REVISION=	0
CATEGORIES=	devel
USE_GROFF =	Yes

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
