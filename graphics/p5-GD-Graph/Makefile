# $OpenBSD: Makefile,v 1.12 2002/07/15 03:11:46 kevlo Exp $

COMMENT=	"module for graph plotting"

DISTNAME=	GDGraph-1.35
PKGNAME=	p5-GD-Graph-1.33
CATEGORIES=	graphics perl5

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=GD/}

BUILD_DEPENDS=	:p5-GD->=1.18:graphics/p5-GD \
		:p5-GD-TextUtil-*:graphics/p5-GD-TextUtil
RUN_DEPENDS=	${BUILD_DEPENDS}

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
