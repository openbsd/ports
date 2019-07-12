# $OpenBSD: Makefile,v 1.18 2019/07/12 20:50:02 sthen Exp $

COMMENT=	Template Toolkit views for Catalyst

DISTNAME=	Catalyst-View-TT-0.37
CATEGORIES=	textproc
REVISION=	0

# Perl
PERMIT_PACKAGE=	Yes

MODULES=	cpan
PKG_ARCH=	*

RUN_DEPENDS=	devel/p5-Data-Dump \
		devel/p5-Class-Accessor \
		devel/p5-MRO-Compat \
		devel/p5-Path-Class \
		textproc/p5-Template-Timer \
		www/p5-Catalyst-Runtime
TEST_DEPENDS=textproc/p5-Template-Provider-Encoding

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_STYLE =	modinst

.include <bsd.port.mk>
