# $OpenBSD: Makefile,v 1.18 2011/09/17 13:51:52 jasper Exp $

COMMENT=	perl5 interface to GnuPG

MODULES=	cpan
DISTNAME=	GnuPG-Interface-0.44
CATEGORIES=	security

# Perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Any-Moose \
		security/gnupg

.include <bsd.port.mk>	
