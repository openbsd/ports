# $OpenBSD: Makefile,v 1.6 2010/07/13 19:46:11 sthen Exp $

COMMENT=	base class for implementing various dependency trees

MODULES=	cpan

DISTNAME=	Algorithm-Dependency-1.102
REVISION=	1
CATEGORIES=	devel

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-Test-ClassAPI \
		::devel/p5-Params-Util
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
