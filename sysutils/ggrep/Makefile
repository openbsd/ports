# $OpenBSD: Makefile,v 1.20 2013/11/09 23:19:03 naddy Exp $

COMMENT=	GNU versions of grep pattern matching utilities

DISTNAME=	grep-2.14
PKGNAME=	g${DISTNAME}
REVISION=	0
CATEGORIES=	sysutils
HOMEPAGE=	https://www.gnu.org/software/grep/grep.html

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_GNU:=grep/}

# no .tar.gz available, GNU grep itself requires gcc >= 3
EXTRACT_SUFX=	.tar.xz

WANTLIB=	c pcre
MODULES=	devel/gettext
LIB_DEPENDS=	devel/pcre
BUILD_DEPENDS=	devel/gperf

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--program-prefix=g
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/build-aux

.include <bsd.port.mk>
