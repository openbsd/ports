# $OpenBSD: Makefile,v 1.5 2013/03/11 11:44:44 espie Exp $

COMMENT=	use SSI from CGI scripts

MODULES=	cpan
DISTNAME=	CGI-SSI-0.92
REVISION=	0
CATEGORIES=	www
USE_GROFF =	Yes

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Time-TimeDate \
		www/p5-HTML-SimpleParse \
		www/p5-libwww

.include <bsd.port.mk>
