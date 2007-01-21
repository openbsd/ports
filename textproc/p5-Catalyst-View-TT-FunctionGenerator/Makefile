# $OpenBSD: Makefile,v 1.2 2007/01/21 21:46:20 simon Exp $

COMMENT= 	"use shorter names in catalyst tt views"

MODULES=	cpan
DISTNAME=	Catalyst-View-TT-FunctionGenerator-0.01
CATEGORIES=	textproc devel

# Artistic + GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::textproc/p5-Catalyst-View-TT \
		::www/p5-Catalyst-Plugin-Singleton

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
