# $OpenBSD: Makefile,v 1.10 2018/09/06 14:51:26 sthen Exp $

COMMENT=	regular expressions library

V=		6.9.0
DISTNAME=	onig-$V
PKGNAME=	oniguruma-$V

SHARED_LIBS +=  onig                 4.0      # 5.0

CATEGORIES=	textproc

HOMEPAGE=	https://github.com/kkos/oniguruma/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	https://github.com/kkos/oniguruma/releases/download/v$V/

SEPARATE_BUILD=	 Yes
CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
