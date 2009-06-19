# $OpenBSD: Makefile,v 1.3 2009/06/19 00:25:39 jim Exp $

COMMENT=	mro::* interface compatibility for Perl < 5.9.5

MODULES=	cpan
DISTNAME=	MRO-Compat-0.11
CATEGORIES=	devel

CPAN_AUTHOR=	FLORA

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-Class-C3->=0.20:devel/p5-Class-C3
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_ARGS=	--skipdeps

.include <bsd.port.mk>
