# $OpenBSD: Makefile,v 1.5 2009/06/03 03:21:58 merdely Exp $

COMMENT=	compress CSS info for transmission

MODULES=	cpan
DISTNAME=	CSS-Squish-0.08
CATEGORIES=	www

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=	::www/p5-URI
REGRESS_DEPENDS=::devel/p5-Test-LongString

.include <bsd.port.mk>
