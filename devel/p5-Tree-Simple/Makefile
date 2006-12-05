# $OpenBSD: Makefile,v 1.4 2006/12/05 06:16:38 msf Exp $

COMMENT=	"A simple tree object"

MODULES=	cpan
DISTNAME=	Tree-Simple-1.17
CATEGORIES=	devel

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

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
