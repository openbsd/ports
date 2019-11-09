# $OpenBSD: Makefile,v 1.14 2019/11/09 22:31:55 fcambus Exp $

COMMENT=		count lines of code

V=			1.84
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
