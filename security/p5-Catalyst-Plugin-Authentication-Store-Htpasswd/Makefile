# $OpenBSD: Makefile,v 1.10 2013/03/11 11:41:26 espie Exp $

COMMENT= 	catalyst authentication via .htpasswd

DISTNAME=	Catalyst-Plugin-Authentication-Store-Htpasswd-0.02
REVISION=	2
CATEGORIES=	security

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	cpan
USE_GROFF =	Yes

RUN_DEPENDS=	security/p5-Authen-Htpasswd \
		security/p5-Catalyst-Plugin-Authentication

.include <bsd.port.mk>
