# $OpenBSD: Makefile,v 1.10 2010/07/13 19:46:13 sthen Exp $

SHARED_ONLY=	Yes

COMMENT= 	check if the documentation of a module is comprehensive

MODULES=	cpan
DISTNAME=	Pod-Coverage-0.20
REVISION=	0
CATEGORIES=	devel

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-Devel-Symdump

CONFIGURE_STYLE=modbuild

.include <bsd.port.mk>
