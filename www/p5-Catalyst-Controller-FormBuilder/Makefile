# $OpenBSD: Makefile,v 1.15 2020/07/03 21:45:56 sthen Exp $

COMMENT=	Catalyst FormBuilder Base Controller

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Catalyst-Controller-FormBuilder-0.06
CATEGORIES=	www
REVISION=	1

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-MRO-Compat \
		devel/p5-Test-WWW-Mechanize-Catalyst \
		devel/p5-Tie-IxHash \
		www/p5-CGI-FormBuilder \
		www/p5-Catalyst-Runtime \
		devel/p5-Class-Data-Inheritable>=0.04 \
		devel/p5-Class-Inspector>=1.13

CONFIGURE_STYLE =	modinst

.include <bsd.port.mk>
