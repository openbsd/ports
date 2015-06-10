# $OpenBSD: Makefile,v 1.12 2015/06/10 12:53:09 benoit Exp $

COMMENT=	common rules for searching for Perl things

MODULES=	cpan
DISTNAME =	File-Find-Rule-Perl-1.15
CATEGORIES=	devel

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-File-Find-Rule>=0.20 \
		devel/p5-Params-Util
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
