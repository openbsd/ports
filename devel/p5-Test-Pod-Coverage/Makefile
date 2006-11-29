# $OpenBSD: Makefile,v 1.6 2006/11/29 08:23:31 espie Exp $

COMMENT= 	"check for pod coverage in your distribution"

MODULES=	cpan
DISTNAME=	Test-Pod-Coverage-1.08
CATEGORIES=	devel

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-Pod-Coverage

.include <bsd.port.mk>
