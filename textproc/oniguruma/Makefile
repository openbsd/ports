# $OpenBSD: Makefile,v 1.19 2020/07/11 22:54:40 sthen Exp $

COMMENT=	regular expressions library

V=		6.9.5
DISTNAME=	onig-$V-rev1
PKGNAME=	oniguruma-$Vpl1
WRKDIST=	${WRKDIR}/onig-$V
REVISION=	0

SHARED_LIBS +=  onig                 7.0      # 5.0

CATEGORIES=	textproc

HOMEPAGE=	https://github.com/kkos/oniguruma/

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# BSD
PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://github.com/kkos/oniguruma/releases/download/v$V_rev1/

SEPARATE_BUILD=	 Yes
DEBUG_PACKAGES=	 ${BUILD_PACKAGES}
CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
