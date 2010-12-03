# $OpenBSD: Makefile,v 1.4 2010/12/03 11:46:52 ajacoutot Exp $

COMMENT=	resolve relative links in (X)HTML into absolute URI

MODULES=	cpan
DISTNAME=	HTML-ResolveLink-0.05
REVISION=	0
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
