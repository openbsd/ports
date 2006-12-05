# $OpenBSD: Makefile,v 1.3 2006/12/05 06:19:42 msf Exp $

COMMENT=	"thoroughly testing objects via registered handlers"

MODULES=	cpan

DISTNAME=	Test-Object-0.07
CATEGORIES=	devel

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_ENV=	AUTOMATED_TESTING=Yes TEST_POD=Yes

.include <bsd.port.mk>
