# $OpenBSD: Makefile,v 1.5 2006/12/05 06:17:21 msf Exp $

COMMENT= 	"test functions for exception based code"

MODULES=	cpan
DISTNAME=	Test-Exception-0.24
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
