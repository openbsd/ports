# $OpenBSD: Makefile,v 1.20 2016/03/20 19:57:02 naddy Exp $

COMMENT=	perl5 interface to GnuPG

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	GnuPG-Interface-0.44
CATEGORIES=	security

# Perl
PERMIT_PACKAGE_CDROM=   Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Any-Moose \
		security/gnupg

.include <bsd.port.mk>	
