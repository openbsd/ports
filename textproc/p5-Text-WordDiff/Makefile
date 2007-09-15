# $OpenBSD: Makefile,v 1.3 2007/09/15 20:59:40 merdely Exp $

COMMENT=		diff based on word, not lines for perl

MODULES=		cpan
DISTNAME=		Text-WordDiff-0.02
CATEGORIES=		textproc

# Artistic
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

CONFIGURE_STYLE=	modbuild

REGRESS_DEPENDS=	::devel/p5-Test-Pod

.include <bsd.port.mk>	
