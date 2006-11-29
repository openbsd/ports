# $OpenBSD: Makefile,v 1.4 2006/11/29 08:23:30 espie Exp $

COMMENT= 	"test functions for exception based code"

MODULES=	cpan
DISTNAME=	Test-Exception-0.21
CATEGORIES=	devel

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS= 		::devel/p5-Sub-Uplevel
REGRESS_DEPENDS=	::devel/p5-Pod-Coverage \
			::devel/p5-IO-String

.include <bsd.port.mk>
