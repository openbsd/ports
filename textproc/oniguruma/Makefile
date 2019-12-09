# $OpenBSD: Makefile,v 1.15 2019/12/09 15:07:55 sthen Exp $

COMMENT=	regular expressions library

V=		6.9.4
DISTNAME=	onig-$V
PKGNAME=	oniguruma-$V

SHARED_LIBS +=  onig                 6.1      # 5.0

CATEGORIES=	textproc

HOMEPAGE=	https://github.com/kkos/oniguruma/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://github.com/kkos/oniguruma/releases/download/v$V/

SEPARATE_BUILD=	 Yes
DEBUG_PACKAGES=	 ${BUILD_PACKAGES}
CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
