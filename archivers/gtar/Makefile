# $OpenBSD: Makefile,v 1.74 2014/08/09 19:46:19 naddy Exp $

COMMENT=	GNU version of the traditional tape archiver

DISTNAME=	tar-1.28
PKGNAME=	g${DISTNAME}
CATEGORIES=	archivers
HOMEPAGE=	https://www.gnu.org/software/tar/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_GNU:=tar/}
EXTRACT_SUFX=	.tar.xz

MODULES=	devel/gettext
# only force dependencies for compressors that have a single-letter option
RUN_DEPENDS=	archivers/bzip2 archivers/xz

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--program-prefix=g
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib ${LDSTATIC}" \
		DEFAULT_ARCHIVE=/dev/rst0 \
		DEFAULT_RMT_COMMAND=/etc/rmt
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/build-aux

# supply result to skip a test that will abort configure if run as root
CONFIGURE_ENV+=	gl_cv_func_mknod_works=no

FLAVORS=	static
FLAVOR?=

.if ${FLAVOR:Mstatic}
LDSTATIC=	-static
MODULES=
BUILD_DEPENDS+=	devel/gettext
CONFIGURE_ENV+=	SHLIBEXT=""
.else
LDSTATIC=
WANTLIB=	c
.endif

# Test 87 is known to fail because getcwd(3) fails if the
# parent directory is unreadable.

# Tests 161 163 are known to fail because path resolution of ".."
# in a removed directory fails.

.include <bsd.port.mk>
