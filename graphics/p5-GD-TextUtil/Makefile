# $OpenBSD: Makefile,v 1.10 2002/06/09 05:31:44 wilfried Exp $

COMMENT=	"text utilities for use with GD drawing package"

DISTNAME=	GDTextUtil-0.80
PKGNAME=	p5-GD-TextUtil-0.80
CATEGORIES=	graphics perl5
NEED_VERSION=	1.496
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=GD/}

BUILD_DEPENDS=	:p5-GD-*:graphics/p5-GD
RUN_DEPENDS=	${BUILD_DEPENDS}

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
