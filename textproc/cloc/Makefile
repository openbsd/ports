COMMENT=		count lines of code

V=			1.90
DISTNAME=		cloc-${V}

CATEGORIES=		textproc devel

HOMEPAGE=		https://github.com/AlDanial/cloc

MAINTAINER=		Joerg Jung <jung@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

MASTER_SITES=		https://github.com/AlDanial/cloc/releases/download/v${V}/

NO_BUILD=		Yes
PKG_ARCH=		*

RUN_DEPENDS=		devel/p5-Algorithm-Diff \
			devel/p5-Parallel-ForkManager \
			security/p5-Digest-Perl-MD5 \
			textproc/p5-Regexp-Common
BUILD_DEPENDS+=		${RUN_DEPENDS}
TEST_DEPENDS+=		archivers/unzip

FAKE_FLAGS=		prefix="${PREFIX}" \
			man_prefix="${PREFIX}" \
			PODDATE=`stat -t %Y-%m-%d -f %Sm ${WRKSRC}/cloc`

USE_GMAKE=		Yes

WRKBUILD=		${WRKSRC}/Unix

.include <bsd.port.mk>
