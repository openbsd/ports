# $OpenBSD: Makefile,v 1.13 2002/11/30 19:30:44 margarida Exp $

COMMENT=	"text utilities for use with GD drawing package"

DISTNAME=	GDTextUtil-0.83
PKGNAME=	p5-GD-TextUtil-0.80
CATEGORIES=	graphics perl5

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=GD/}

BUILD_DEPENDS=	:p5-GD-*:graphics/p5-GD
RUN_DEPENDS=	${BUILD_DEPENDS}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
