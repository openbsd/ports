# $OpenBSD: Makefile,v 1.5 2013/03/11 11:44:46 espie Exp $

COMMENT=	library for enabling X-WSSE authentication in LWP

MODULES=	cpan
DISTNAME=	LWP-Authen-Wsse-0.05
REVISION=	0
CATEGORIES=	www
USE_GROFF =	Yes

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	security/p5-Digest-SHA1 \
		www/p5-libwww

.include <bsd.port.mk>
