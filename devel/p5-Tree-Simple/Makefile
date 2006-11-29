# $OpenBSD: Makefile,v 1.3 2006/11/29 08:23:31 espie Exp $

COMMENT=	"A simple tree object"

MODULES=	cpan
DISTNAME=	Tree-Simple-1.15
CATEGORIES=	devel

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	::devel/p5-Test-Exception \
		:p5-Test-Memory-Cycle->=1.02:devel/p5-Test-Memory-Cycle
REGRESS_DEPENDS= ${BUILD_DEPENDS}

.include <bsd.port.mk>
