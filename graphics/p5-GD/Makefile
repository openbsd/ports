#	$OpenBSD: Makefile,v 1.12 2002/07/10 20:48:13 avsm Exp $

COMMENT=	"module to interface with the GD graphics library"

DISTNAME=	GD-1.40
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	graphics perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=GD/}

LIB_DEPENDS=	gd.18::graphics/gd

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

REGRESS_DEPENDS=	::devel/p5-Test-Harness

.include <bsd.port.mk>
