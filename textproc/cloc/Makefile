# $OpenBSD: Makefile,v 1.11 2017/12/24 18:20:49 jasper Exp $

COMMENT=		count lines of code

V=			1.74
DISTNAME=		cloc-${V}

CATEGORIES=		textproc devel

HOMEPAGE=		http://cloc.sourceforge.net/

MAINTAINER=		Joerg Jung <jung@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		https://github.com/AlDanial/cloc/releases/download/${V}/

NO_BUILD=		Yes
PKG_ARCH=		*

RUN_DEPENDS=		devel/p5-Algorithm-Diff textproc/p5-Regexp-Common
BUILD_DEPENDS+=		${RUN_DEPENDS}

FAKE_FLAGS=		prefix="${PREFIX}" \
			man_prefix="${PREFIX}"

USE_GMAKE=		Yes

WRKBUILD=		${WRKSRC}/Unix

.include <bsd.port.mk>
