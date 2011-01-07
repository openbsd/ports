# $OpenBSD: Makefile,v 1.10 2011/01/07 11:46:58 benoit Exp $

COMMENT=	compress CSS info for transmission

MODULES=	cpan
DISTNAME=	CSS-Squish-0.10
CATEGORIES=	www
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=	www/p5-URI
REGRESS_DEPENDS=devel/p5-Test-LongString

.include <bsd.port.mk>
