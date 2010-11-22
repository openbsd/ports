# $OpenBSD: Makefile,v 1.3 2010/11/22 08:36:51 espie Exp $

COMMENT=	resolve relative links in (X)HTML into absolute URI

MODULES=	cpan
DISTNAME=	HTML-ResolveLink-0.05
CATEGORIES=	www
USE_GROFF =	Yes

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	www/p5-HTML-Parser \
		www/p5-URI

.include <bsd.port.mk>
