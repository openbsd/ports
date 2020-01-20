# $OpenBSD: Makefile,v 1.36 2020/01/20 17:42:06 naddy Exp $

COMMENT=	GNU versions of grep pattern matching utilities

DISTNAME=	grep-3.4
PKGNAME=	g${DISTNAME}
CATEGORIES=	sysutils
HOMEPAGE=	https://www.gnu.org/software/grep/grep.html

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv3+
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_GNU:=grep/}

EXTRACT_SUFX=	.tar.xz

LIB_DEPENDS=	devel/gettext,-runtime devel/pcre
WANTLIB=	c iconv intl pcre

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--program-prefix=g
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
# Tries to use libsigsegv for SEGV-based stack overflow detection heuristic
# in absence of the corresponding XSI behavior.  Let's try without.
CONFIGURE_ENV+= ac_cv_libsigsegv=no
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/build-aux

.include <bsd.port.mk>
