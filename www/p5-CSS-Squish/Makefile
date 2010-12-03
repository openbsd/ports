# $OpenBSD: Makefile,v 1.9 2010/12/03 11:46:51 ajacoutot Exp $

COMMENT=	compress CSS info for transmission

MODULES=	cpan
DISTNAME=	CSS-Squish-0.09
REVISION=	0
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
