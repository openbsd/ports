# $OpenBSD: Makefile,v 1.6 2010/10/18 18:13:14 espie Exp $

COMMENT=	Charting library for Perl

DISTNAME=	Chart-2.4.1
REVISION=	0
CATEGORIES=	graphics

MAINTAINER=	Damien Miller <djm@openbsd.org>

RUN_DEPENDS=	:p5-GD-*:graphics/p5-GD
BUILD_DEPENDS=	${RUN_DEPENDS}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	cpan
USE_GROFF =	Yes

.include <bsd.port.mk>

