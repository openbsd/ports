# $OpenBSD: Makefile,v 1.16 2004/12/15 01:49:28 kevlo Exp $

COMMENT=	"text utilities for use with GD drawing package"

VERSION=	0.86
DISTNAME=	GDTextUtil-${VERSION}
PKGNAME=	p5-GD-TextUtil-${VERSION}
CATEGORIES=	graphics perl5

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=GD/}

RUN_DEPENDS=	:p5-GD-*:graphics/p5-GD
BUILD_DEPENDS=	${RUN_DEPENDS}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
