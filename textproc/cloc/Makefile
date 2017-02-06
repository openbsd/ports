# $OpenBSD: Makefile,v 1.9 2017/02/06 22:29:57 awolk Exp $

COMMENT=		count lines of code

V=			1.70
DISTNAME=		cloc-${V}
REVISION=		0

CATEGORIES=		textproc devel

HOMEPAGE=		http://cloc.sourceforge.net/

MAINTAINER=		Joerg Jung <jung@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		https://github.com/AlDanial/cloc/releases/download/v${V}/

NO_BUILD=		Yes
PKG_ARCH=		*

RUN_DEPENDS=		devel/p5-Algorithm-Diff textproc/p5-Regexp-Common
BUILD_DEPENDS+=		${RUN_DEPENDS}

FAKE_FLAGS=		prefix="${PREFIX}" \
			man_prefix="${PREFIX}"

USE_GMAKE=		Yes

WRKBUILD=		${WRKSRC}/Unix

.include <bsd.port.mk>
