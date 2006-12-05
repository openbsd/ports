# $OpenBSD: Makefile,v 1.7 2006/12/05 06:15:57 msf Exp $

COMMENT= 	"perl extension for emulating troublesome interfaces"

MODULES=	cpan

DISTNAME=	Test-Memory-Cycle-1.04
CATEGORIES=	devel

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-Devel-Cycle

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
