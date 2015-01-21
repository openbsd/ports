# $OpenBSD: Makefile,v 1.11 2015/01/21 14:40:11 sthen Exp $

COMMENT= 	catalyst authentication via .htpasswd

DISTNAME=	Catalyst-Plugin-Authentication-Store-Htpasswd-0.02
REVISION=	2
CATEGORIES=	security

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	cpan

RUN_DEPENDS=	security/p5-Authen-Htpasswd \
		security/p5-Catalyst-Plugin-Authentication

.include <bsd.port.mk>
