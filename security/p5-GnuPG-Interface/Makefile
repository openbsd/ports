# $OpenBSD: Makefile,v 1.22 2020/07/03 21:45:42 sthen Exp $

COMMENT=	perl5 interface to GnuPG

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	GnuPG-Interface-0.44
CATEGORIES=	security
REVISION=	0

# Perl
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Any-Moose \
		security/gnupg

.include <bsd.port.mk>	
