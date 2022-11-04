COMMENT=	GNU Bourne Again Shell

DISTNAME=	bash-5.2
PKGNAME=	bash-5.2.2
REVISION=	0
CATEGORIES=	shells
HOMEPAGE=	https://www.gnu.org/software/bash/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv3+
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_GNU:=bash/}
MASTER_SITES0=	${MASTER_SITE_GNU:=bash/bash-5.2-patches/}
DIST_SUBDIR=	bash
.for i in 001 002
PATCHFILES+=	bash52-$i:0
.endfor

LIB_DEPENDS=	devel/gettext,-runtime
WANTLIB=	c curses iconv intl

DEBUG_PACKAGES=	${BUILD_PACKAGES}

CFLAGS+=	-Wno-parentheses

ALL_TARGET=	all loadables
CONFIGURE_STYLE=gnu
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/support
CONFIGURE_ARGS=	--without-bash-malloc

.include <bsd.port.mk>
