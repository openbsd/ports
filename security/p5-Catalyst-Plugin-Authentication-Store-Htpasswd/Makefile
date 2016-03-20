# $OpenBSD: Makefile,v 1.13 2016/03/20 19:56:59 naddy Exp $

COMMENT= 	catalyst authentication via .htpasswd

DISTNAME=	Catalyst-Plugin-Authentication-Store-Htpasswd-0.02
REVISION=	3
CATEGORIES=	security

# Perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	cpan
PKG_ARCH=	*

RUN_DEPENDS=	security/p5-Authen-Htpasswd \
		security/p5-Catalyst-Plugin-Authentication

.include <bsd.port.mk>
