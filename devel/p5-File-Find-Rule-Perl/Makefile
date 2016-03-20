# $OpenBSD: Makefile,v 1.13 2016/03/20 19:56:22 naddy Exp $

COMMENT=	common rules for searching for Perl things

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	File-Find-Rule-Perl-1.15
CATEGORIES=	devel

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-File-Find-Rule>=0.20 \
		devel/p5-Params-Util
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
