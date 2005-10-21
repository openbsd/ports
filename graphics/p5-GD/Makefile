#	$OpenBSD: Makefile,v 1.19 2005/10/21 10:29:17 fgsch Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"module to interface with the GD graphics library"

DISTNAME=	GD-1.41
PKGNAME=	p5-${DISTNAME}p2
CATEGORIES=	graphics perl5

HOMEPAGE=	http://stein.cshl.org/WWW/software/GD
MAINTAINER=	Jim Geovedi <jim@corebsd.or.id>

MODULES=	converters/libiconv

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		jpeg m png ttf z

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=GD/}

LIB_DEPENDS=	gd.18::graphics/gd

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
