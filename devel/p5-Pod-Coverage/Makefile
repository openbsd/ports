# $OpenBSD: Makefile,v 1.7 2008/10/02 20:35:10 simon Exp $

SHARED_ONLY=	Yes

COMMENT= 	check if the documentation of a module is comprehensive

MODULES=	cpan
DISTNAME=	Pod-Coverage-0.18
PKGNAME=	p5-${DISTNAME}p1
CATEGORIES=	devel

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-Devel-Symdump

CONFIGURE_STYLE=modbuild

.include <bsd.port.mk>
