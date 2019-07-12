# $OpenBSD: Makefile,v 1.21 2019/07/12 21:02:25 sthen Exp $

COMMENT=	perl5 interface to GnuPG

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	GnuPG-Interface-0.44
CATEGORIES=	security

# Perl
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Any-Moose \
		security/gnupg

.include <bsd.port.mk>	
