# $OpenBSD: Makefile,v 1.18 2020/04/27 13:59:26 sthen Exp $

COMMENT=	regular expressions library

V=		6.9.5
DISTNAME=	onig-$V-rev1
PKGNAME=	oniguruma-$Vpl1
WRKDIST=	${WRKDIR}/onig-$V

SHARED_LIBS +=  onig                 7.0      # 5.0

CATEGORIES=	textproc

HOMEPAGE=	https://github.com/kkos/oniguruma/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://github.com/kkos/oniguruma/releases/download/v$V_rev1/

SEPARATE_BUILD=	 Yes
DEBUG_PACKAGES=	 ${BUILD_PACKAGES}
CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
