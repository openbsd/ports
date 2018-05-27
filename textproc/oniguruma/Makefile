# $OpenBSD: Makefile,v 1.8 2018/05/27 07:28:06 martijn Exp $

COMMENT=	regular expressions library

V=		6.8.2
DISTNAME=	onig-$V
SHARED_LIBS=	onig 3.0
PKGNAME=	oniguruma-$V
CATEGORIES=	textproc

HOMEPAGE=	https://github.com/kkos/oniguruma/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	https://github.com/kkos/oniguruma/releases/download/v${V}/

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
