# $OpenBSD: Makefile,v 1.5 2010/12/03 11:44:35 ajacoutot Exp $

COMMENT=	module for controlling superclass method dispatch

DISTNAME=	SUPER-1.17
REVISION=	0

CATEGORIES=	devel

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=	cpan
BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Sub-Identify

CONFIGURE_STYLE=modbuild
USE_GROFF =	Yes

.include <bsd.port.mk>
