# $OpenBSD: Makefile,v 1.1.1.2 2004/04/11 11:58:18 sturm Exp $

COMMENT=	"Compare Dates"

DISTNAME=	Number-Compare-Date-0.02
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Number/}

MAINTAINER=	Sam Smith <S@msmith.net>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:p5-Time-TimeDate->=1.16:devel/p5-Time-TimeDate \
		::devel/p5-Number-Compare

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
