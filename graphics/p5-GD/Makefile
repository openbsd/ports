#	$OpenBSD: Makefile,v 1.13 2002/09/21 11:52:08 avsm Exp $

COMMENT=	"module to interface with the GD graphics library"

DISTNAME=	GD-1.41
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	graphics perl5

HOMEPAGE=	http://stein.cshl.org/WWW/software/GD
MAINTAINER=	Jim Geovedi <jim@corebsd.or.id>

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=GD/}
LIB_DEPENDS=	gd.18::graphics/gd
CONFIGURE_STYLE= perl

FLAVORS=	no_x11
FLAVOR?=

.if ${FLAVOR:Mno_x11}
PATCH_LIST=	patch-MakeMaker.PL-no_x11
.else
PATCH_LIST=	patch-MakeMaker.PL
.endif

REGRESS_DEPENDS=	::devel/p5-Test-Harness

.include <bsd.port.mk>
