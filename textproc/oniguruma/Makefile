# $OpenBSD: Makefile,v 1.9 2018/05/27 14:41:21 sthen Exp $

COMMENT=	regular expressions library

V=		6.8.2
DISTNAME=	onig-$V
PKGNAME=	oniguruma-$V
REVISION=	0

SHARED_LIBS +=  onig                 3.0      # 5.0

CATEGORIES=	textproc

HOMEPAGE=	https://github.com/kkos/oniguruma/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	https://github.com/kkos/oniguruma/releases/download/v$V/

SEPARATE_BUILD=	 Yes
CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
