COMMENT=	regular expressions library

V=		6.9.9
DISTNAME=	onig-$V
PKGNAME=	oniguruma-$V

SHARED_LIBS +=  onig                 8.0      # 8.0

CATEGORIES=	textproc

HOMEPAGE=	https://github.com/kkos/oniguruma/

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# BSD
PERMIT_PACKAGE=	Yes

SITES=		https://github.com/kkos/oniguruma/releases/download/v$V/

SEPARATE_BUILD=	 Yes
DEBUG_PACKAGES=	 ${BUILD_PACKAGES}
CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
