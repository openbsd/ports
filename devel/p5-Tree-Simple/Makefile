# $OpenBSD: Makefile,v 1.8 2010/09/15 13:52:12 sthen Exp $

COMMENT=	simple tree object

MODULES=	cpan
DISTNAME=	Tree-Simple-1.18
REVISION=	0
CATEGORIES=	devel

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

REGRESS_DEPENDS= ::devel/p5-Test-Exception \
		 :p5-Test-Memory-Cycle->=1.02:devel/p5-Test-Memory-Cycle 

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_STYLE= modbuild

.include <bsd.port.mk>
