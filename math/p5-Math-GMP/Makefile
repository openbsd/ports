# $OpenBSD: Makefile,v 1.7 2002/05/13 23:31:26 espie Exp $

COMMENT=	"high speed arbitrary-size integer math"

DISTNAME=	Math-GMP-1.06
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	math perl5
NEED_VERSION=	1.515
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Math/}

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	gmp.4::devel/gmp

CONFIGURE_STYLE= perl
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
