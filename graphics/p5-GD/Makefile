# $OpenBSD: Makefile,v 1.22 2006/08/03 12:53:18 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	"module to interface with the GD graphics library"

DISTNAME=	GD-2.30
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	graphics perl5

HOMEPAGE=	http://stein.cshl.org/WWW/software/GD
MAINTAINER=	Jim Geovedi <jim@corebsd.or.id>

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	fontconfig freetype jpeg m png z

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=GD/}

LIB_DEPENDS=	gd.>=20.28::graphics/gd

MODULES=	converters/libiconv

USE_X11=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
