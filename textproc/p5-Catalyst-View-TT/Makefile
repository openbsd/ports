# $OpenBSD: Makefile,v 1.14 2013/03/11 11:42:43 espie Exp $

COMMENT=	Template Toolkit views for Catalyst

DISTNAME=	Catalyst-View-TT-0.37
CATEGORIES=	textproc

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	cpan
USE_GROFF =	Yes

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
