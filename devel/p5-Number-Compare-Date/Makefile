# $OpenBSD: Makefile,v 1.1.1.1 2004/01/29 18:15:28 sturm Exp $

COMMENT=	"Compare Dates"

DISTNAME=	Number-Compare-Date-0.02
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Number/}

MAINTAINER=	Sam Smith <S@msmith.net>

# Artistic/GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-Time-TimeDate->=1.16:devel/p5-Time-TimeDate \
		::devel/p5-Number-Compare
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
