COMMENT=	GNU Bourne Again Shell

DISTNAME=	bash-5.2.32
CATEGORIES=	shells
HOMEPAGE=	https://www.gnu.org/software/bash/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv3+
PERMIT_PACKAGE=	Yes

SITES=		${SITE_GNU:=bash/}
SITES.p=	${SITE_GNU:=bash/bash-5.2-patches/}
DIST_SUBDIR=	bash
.for i in
PATCHFILES.p +=	bash52-$i
.endfor

LIB_DEPENDS=	devel/gettext,-runtime
WANTLIB=	c curses iconv intl

DEBUG_PACKAGES=	${BUILD_PACKAGES}

CFLAGS+=	-Wno-parentheses
# 5.3 will have prototypes
CFLAGS+=	-Wno-deprecated-non-prototype

ALL_TARGET=	all loadables
CONFIGURE_STYLE=gnu
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/support
CONFIGURE_ARGS=	--without-bash-malloc

.include <bsd.port.mk>
