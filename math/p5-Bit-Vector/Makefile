# $OpenBSD: Makefile,v 1.7 2006/12/24 19:50:51 dassow Exp $

SHARED_ONLY=	Yes

COMMENT=	"library of advanced math functions"

MODULES=	cpan
DISTNAME=	Bit-Vector-6.4
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	math

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=  ${RUN_DEPENDS}
RUN_DEPENDS=    :p5-Carp-Clan->=5.3:devel/p5-Carp-Clan

.include <bsd.port.mk>
