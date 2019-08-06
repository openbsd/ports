# $OpenBSD: Makefile,v 1.14 2019/08/06 20:59:16 sthen Exp $

COMMENT=	regular expressions library

V=		6.9.3
DISTNAME=	onig-$V
PKGNAME=	oniguruma-$V

SHARED_LIBS +=  onig                 6.0      # 5.0

CATEGORIES=	textproc

HOMEPAGE=	https://github.com/kkos/oniguruma/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://github.com/kkos/oniguruma/releases/download/v$V/

SEPARATE_BUILD=	 Yes
CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
