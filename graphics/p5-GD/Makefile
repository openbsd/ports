#	$OpenBSD: Makefile,v 1.16 2002/11/30 17:17:35 couderc Exp $

COMMENT=	"module to interface with the GD graphics library"

DISTNAME=	GD-1.41
PKGNAME=	p5-${DISTNAME}p1
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

.include <bsd.port.mk>
