# $OpenBSD: Makefile,v 1.14 2010/12/03 11:44:34 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT= 	check if the documentation of a module is comprehensive

MODULES=	cpan
DISTNAME=	Pod-Coverage-0.20
REVISION=	2
CATEGORIES=	devel
USE_GROFF =	Yes

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Devel-Symdump

CONFIGURE_STYLE=modbuild

.include <bsd.port.mk>
