COMMENT=	GNU Bourne Again Shell

DISTNAME=	bash-5.3
PKGNAME=	bash-5.3.9
CATEGORIES=	shells
HOMEPAGE=	https://www.gnu.org/software/bash/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv3+
PERMIT_PACKAGE=	Yes

SITES=		${SITE_GNU:=bash/}
SITES.p=	${SITE_GNU:=bash/bash-5.3-patches/}
DIST_SUBDIR=	bash
# 5.3 was re-rolled
DISTFILES=	bash-5.3-0{bash-5.3}.tar.gz
.for i in 001 002 003 004 005 006 007 008 009
PATCHFILES.p +=	bash53-$i
.endfor

LIB_DEPENDS=	devel/gettext,-runtime
WANTLIB=	c curses iconv intl m pthread

DEBUG_PACKAGES=	${BUILD_PACKAGES}

CFLAGS+=	-Wno-parentheses

ALL_TARGET=	all loadables
CONFIGURE_STYLE=gnu
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/support
CONFIGURE_ARGS=	--without-bash-malloc

.include <bsd.port.mk>
