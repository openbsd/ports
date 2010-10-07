# $OpenBSD: Makefile,v 1.6 2010/10/07 14:35:01 stephan Exp $

COMMENT=	compress CSS info for transmission

MODULES=	cpan
DISTNAME=	CSS-Squish-0.09
CATEGORIES=	www

# Perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=	::www/p5-URI
REGRESS_DEPENDS=::devel/p5-Test-LongString

.include <bsd.port.mk>
