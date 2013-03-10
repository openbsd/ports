# $OpenBSD: Makefile,v 1.70 2013/03/10 22:28:04 espie Exp $

COMMENT=	GNU version of the traditional tape archiver

DISTNAME=	tar-1.26
PKGNAME=	g${DISTNAME}
REVISION=	1
CATEGORIES=	archivers
HOMEPAGE=	http://www.gnu.org/software/tar/

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
BUILD_DEPENDS+=	devel/gettext>=0.17
CONFIGURE_ENV+=	SHLIBEXT=""
.else
LDSTATIC=
WANTLIB=	c
.endif

# Tests 35 56 are known to fail because getcwd(3) fails if the
# parent directory is unreadable.
TEST_DEPENDS=	devel/autoconf/2.63
TEST_FLAGS=	AUTOCONF_VERSION=2.63

.include <bsd.port.mk>
