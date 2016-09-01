# $OpenBSD: Makefile,v 1.100 2016/09/01 10:53:27 jasper Exp $

COMMENT=	GNU Bourne Again Shell

DISTNAME=	bash-4.3.30
PKGNAME=	bash-4.3.46
CATEGORIES=	shells
HOMEPAGE=	http://cnswww.cns.cwru.edu/~chet/bash/bashtop.html

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_GNU:=bash/}
MASTER_SITES0=	${MASTER_SITE_GNU:=bash/bash-4.3-patches/}
DIST_SUBDIR=	bash
.for i in 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46
PATCHFILES+=	bash43-0$i:0
.endfor

LIB_DEPENDS=	devel/gettext
WANTLIB=	c iconv intl termcap 

CONFIGURE_STYLE=gnu
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/support

# Prefer system mktemp(3) and mkstemp(3) over homegrown replacements
CONFIGURE_ENV=	CPPFLAGS="-DUSE_MKTEMP -DUSE_MKSTEMP"

.include <bsd.port.mk>
