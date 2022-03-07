COMMENT=	regular expressions library

V=		6.9.7.1
DISTNAME=	onig-$V
PKGNAME=	oniguruma-$V
WRKDIST=	${WRKDIR}/onig-6.9.7

SHARED_LIBS +=  onig                 7.2      # 6.0

CATEGORIES=	textproc

HOMEPAGE=	https://github.com/kkos/oniguruma/

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# BSD
PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://github.com/kkos/oniguruma/releases/download/v$V/

SEPARATE_BUILD=	 Yes
DEBUG_PACKAGES=	 ${BUILD_PACKAGES}
CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
