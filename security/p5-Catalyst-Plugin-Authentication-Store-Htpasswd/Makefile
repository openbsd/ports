# $OpenBSD: Makefile,v 1.14 2019/07/12 20:49:06 sthen Exp $

COMMENT= 	catalyst authentication via .htpasswd

DISTNAME=	Catalyst-Plugin-Authentication-Store-Htpasswd-0.02
REVISION=	3
CATEGORIES=	security

# Perl
PERMIT_PACKAGE=	Yes

MODULES=	cpan
PKG_ARCH=	*

RUN_DEPENDS=	security/p5-Authen-Htpasswd \
		security/p5-Catalyst-Plugin-Authentication

.include <bsd.port.mk>
