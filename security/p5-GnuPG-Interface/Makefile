# $OpenBSD: Makefile,v 1.19 2013/03/11 11:41:27 espie Exp $

COMMENT=	perl5 interface to GnuPG

MODULES=	cpan
DISTNAME=	GnuPG-Interface-0.44
CATEGORIES=	security

# Perl
PERMIT_PACKAGE_CDROM=   Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Any-Moose \
		security/gnupg

.include <bsd.port.mk>	
