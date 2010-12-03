# $OpenBSD: Makefile,v 1.6 2010/12/03 11:45:43 ajacoutot Exp $

COMMENT=	POE HTTP user-agent component

MODULES=	cpan
DISTNAME=	POE-Component-Client-HTTP-0.88
REVISION=	0
CATEGORIES=	net www
USE_GROFF =	Yes

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	devel/p5-POE \
		net/p5-POE-Component-Client-Keepalive>=0.25 \
		www/p5-URI \
		www/p5-libwww

REGRESS_DEPENDS=devel/p5-Test-POE-Server-TCP

.include <bsd.port.mk>
