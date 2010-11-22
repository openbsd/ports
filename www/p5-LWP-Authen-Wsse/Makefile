# $OpenBSD: Makefile,v 1.3 2010/11/22 08:36:51 espie Exp $

COMMENT=	library for enabling X-WSSE authentication in LWP

MODULES=	cpan
DISTNAME=	LWP-Authen-Wsse-0.05
CATEGORIES=	www
USE_GROFF =	Yes

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	security/p5-Digest-SHA1 \
		www/p5-libwww

.include <bsd.port.mk>
