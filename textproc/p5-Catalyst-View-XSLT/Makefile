# $OpenBSD: Makefile,v 1.12 2014/11/25 10:36:54 benoit Exp $

COMMENT=	XSLT Views for catalyst

MODULES=	cpan
DISTNAME =	Catalyst-View-XSLT-0.09
CATEGORIES=	textproc

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	textproc/p5-XML-LibXSLT>=1.60 \
		www/p5-Catalyst-Runtime \
		devel/p5-Path-Class

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_STYLE=modbuild

.include <bsd.port.mk>
