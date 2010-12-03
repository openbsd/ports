# $OpenBSD: Makefile,v 1.6 2010/12/03 11:44:23 ajacoutot Exp $

COMMENT=	jcode interface for catalyst

DISTNAME=	Catalyst-Plugin-Charsets-Japanese-0.06
REVISION=	0
CATEGORIES=	converters www
MODULES=	cpan
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	converters/p5-Jcode \
		www/p5-Catalyst-Runtime

REGRESS_DEPENDS=devel/p5-Test-Pod

.include <bsd.port.mk>
