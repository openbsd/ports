# $OpenBSD: Makefile,v 1.2 2006/11/29 08:23:30 espie Exp $

COMMENT=	"Compare Dates"

MODULES=	cpan
DISTNAME=	Number-Compare-Date-0.02
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	devel

MAINTAINER=	Sam Smith <S@msmith.net>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:p5-Time-TimeDate->=1.16:devel/p5-Time-TimeDate \
		::devel/p5-Number-Compare

.include <bsd.port.mk>
