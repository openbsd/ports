# $OpenBSD: Makefile,v 1.5 2010/11/15 19:46:04 espie Exp $

COMMENT=	mro::* interface compatibility for Perl < 5.9.5

MODULES=	cpan
DISTNAME=	MRO-Compat-0.11
CATEGORIES=	devel
USE_GROFF =	Yes

CPAN_AUTHOR=	FLORA

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	p5-Class-C3->=0.20:devel/p5-Class-C3
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_ARGS=	--skipdeps

.include <bsd.port.mk>
