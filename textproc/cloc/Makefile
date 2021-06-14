# $OpenBSD: Makefile,v 1.16 2021/06/14 23:57:16 sthen Exp $

COMMENT=		count lines of code

V=			1.86
DISTNAME=		cloc-${V}
REVISION=		0

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
			man_prefix="${PREFIX}" \
			PODDATE=`stat -t %Y-%m-%d -f %Sm ${WRKSRC}/cloc`

USE_GMAKE=		Yes

WRKBUILD=		${WRKSRC}/Unix

.include <bsd.port.mk>
