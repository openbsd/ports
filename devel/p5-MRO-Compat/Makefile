# $OpenBSD: Makefile,v 1.2 2009/01/30 00:08:19 simon Exp $

COMMENT=	mro::* interface compatibility for Perl < 5.9.5

MODULES=	cpan
DISTNAME=	MRO-Compat-0.09
CATEGORIES=	devel

CPAN_AUTHOR=	BLBLACK

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-Class-C3->=0.19:devel/p5-Class-C3
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_ARGS=	--skipdeps

.include <bsd.port.mk>
