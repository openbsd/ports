# $OpenBSD: Makefile,v 1.14 2019/07/12 20:50:50 sthen Exp $

COMMENT=	Catalyst FormBuilder Base Controller

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Catalyst-Controller-FormBuilder-0.06
CATEGORIES=	www
REVISION=	0

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
