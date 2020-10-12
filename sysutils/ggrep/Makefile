# $OpenBSD: Makefile,v 1.37 2020/10/12 17:37:56 naddy Exp $

COMMENT=	GNU versions of grep pattern matching utilities

DISTNAME=	grep-3.5
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

DEBUG_PACKAGES=	${BUILD_PACKAGES}

# Prevent rebuilding due to inconsistent timestamp.
# Our makeinfo(1) is too old to process the .texi source.
post-patch:
	cd ${WRKSRC}/doc && touch -r stamp-vti grep.info

.include <bsd.port.mk>
