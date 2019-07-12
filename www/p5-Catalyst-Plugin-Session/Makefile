# $OpenBSD: Makefile,v 1.18 2019/07/12 20:50:51 sthen Exp $

COMMENT=	session framework for catalyst

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Catalyst-Plugin-Session-0.32
CATEGORIES=	www
REVISION=	0

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	www/p5-Catalyst-Runtime \
		devel/p5-Moose \
		devel/p5-MooseX-Emulate-Class-Accessor-Fast \
		devel/p5-MRO-Compat \
		devel/p5-Object-Signature
TEST_DEPENDS=devel/p5-Test-Deep \
		devel/p5-Test-Exception \
		www/p5-Catalyst-Plugin-Session-State-Cookie \
		devel/p5-Test-WWW-Mechanize-Catalyst

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_STYLE =	modinst

.include <bsd.port.mk>
