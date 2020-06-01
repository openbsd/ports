# $OpenBSD: Makefile,v 1.15 2020/06/01 21:24:48 jung Exp $

COMMENT=		count lines of code

V=			1.86
DISTNAME=		cloc-${V}

CATEGORIES=		textproc devel

HOMEPAGE=		https://github.com/AlDanial/cloc

MAINTAINER=		Joerg Jung <jung@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

MASTER_SITES=		https://github.com/AlDanial/cloc/releases/download/${V}/

NO_BUILD=		Yes
PKG_ARCH=		*

RUN_DEPENDS=		devel/p5-Algorithm-Diff \
			devel/p5-Parallel-ForkManager \
			textproc/p5-Regexp-Common
BUILD_DEPENDS+=		${RUN_DEPENDS}

FAKE_FLAGS=		prefix="${PREFIX}" \
			man_prefix="${PREFIX}"

USE_GMAKE=		Yes

WRKBUILD=		${WRKSRC}/Unix

.include <bsd.port.mk>
