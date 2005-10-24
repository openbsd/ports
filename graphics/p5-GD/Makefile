#	$OpenBSD: Makefile,v 1.20 2005/10/24 05:03:48 fgsch Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"module to interface with the GD graphics library"

DISTNAME=	GD-1.41
PKGNAME=	p5-${DISTNAME}p3
CATEGORIES=	graphics perl5

HOMEPAGE=	http://stein.cshl.org/WWW/software/GD
MAINTAINER=	Jim Geovedi <jim@corebsd.or.id>

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	freetype jpeg m png z

USE_X11=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=GD/}

LIB_DEPENDS=	gd.18::graphics/gd

CONFIGURE_STYLE= perl

post-patch:
	@perl -pi -e "s,%%LOCALBASE%%,${LOCALBASE},g;" \
	    -e "s,%%X11BASE%%,${X11BASE},g" ${WRKSRC}/Makefile.PL

.include <bsd.port.mk>
