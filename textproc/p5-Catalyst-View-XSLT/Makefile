# $OpenBSD: Makefile,v 1.14 2019/07/12 20:50:02 sthen Exp $

COMMENT=	XSLT Views for catalyst

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Catalyst-View-XSLT-0.09
CATEGORIES=	textproc

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	textproc/p5-XML-LibXSLT>=1.60 \
		www/p5-Catalyst-Runtime \
		devel/p5-Path-Class

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_STYLE=modbuild

.include <bsd.port.mk>
