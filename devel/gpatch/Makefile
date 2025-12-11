COMMENT=		GNU patch

VERSION=		2.8
DISTNAME=		patch-${VERSION}
PKGNAME=		gpatch-${VERSION}
CATEGORIES=		devel

HOMEPAGE=		https://www.gnu.org/software/patch/

# GPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB=		c

SITES=			${SITE_GNU:=patch/}
EXTRACT_SUFX=		.tar.xz

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--program-prefix=g
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/build-aux

.include <bsd.port.mk>
