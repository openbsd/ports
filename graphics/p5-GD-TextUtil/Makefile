# $OpenBSD: Makefile,v 1.19 2010/10/18 18:13:14 espie Exp $

COMMENT=	text utilities for use with GD drawing package

VERSION=	0.86
DISTNAME=	GDTextUtil-${VERSION}
PKGNAME=	p5-GD-TextUtil-${VERSION}p0
CATEGORIES=	graphics

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=GD/}

RUN_DEPENDS=	:p5-GD-*:graphics/p5-GD
BUILD_DEPENDS=	${RUN_DEPENDS}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	cpan
USE_GROFF =	Yes

.include <bsd.port.mk>
