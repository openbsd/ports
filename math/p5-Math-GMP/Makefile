# $OpenBSD: Makefile,v 1.9 2002/09/21 11:59:39 avsm Exp $

COMMENT=	"high speed arbitrary-size integer math"

DISTNAME=	Math-GMP-2.03
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	math perl5

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Math/}
MAINTAINER=	Jim Geovedi <jim@corebsd.or.id>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	gmp.4::devel/gmp

CONFIGURE_STYLE= perl
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
