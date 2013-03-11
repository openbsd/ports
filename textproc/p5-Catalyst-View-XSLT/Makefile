# $OpenBSD: Makefile,v 1.11 2013/03/11 11:42:43 espie Exp $

COMMENT=	XSLT Views for catalyst

MODULES=	cpan
DISTNAME=	Catalyst-View-XSLT-0.08
CATEGORIES=	textproc
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	textproc/p5-XML-LibXSLT>=1.60 \
		www/p5-Catalyst-Runtime \
		devel/p5-Path-Class

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_STYLE=modbuild

.include <bsd.port.mk>
