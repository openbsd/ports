#	$OpenBSD: Makefile,v 1.10 2002/05/13 23:31:24 espie Exp $

COMMENT=	"module to interface with the GD graphics library"

DISTNAME=	GD-1.33
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	graphics perl5
NEED_VERSION=	1.515
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=GD/}

LIB_DEPENDS=	gd.18::graphics/gd

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

FLAVORS=	no_x11
FLAVOR?=

.if ${FLAVOR:L} == "no_x11"
PATCH_LIST=	patch-MakeMaker.PL-no_x11
.else
PATCH_LIST=	patch-MakeMaker.PL
.endif

.include <bsd.port.mk>
