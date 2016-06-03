# $OpenBSD: Makefile,v 1.78 2016/06/03 14:53:32 naddy Exp $

COMMENT=	GNU version of the traditional tape archiver

DISTNAME=	tar-1.29
PKGNAME=	g${DISTNAME}
CATEGORIES=	archivers
HOMEPAGE=	https://www.gnu.org/software/tar/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_GNU:=tar/}
EXTRACT_SUFX=	.tar.xz

# fake WANTLIB to ensure updates occur for major changes in base even for static
WANTLIB=	c

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
BUILD_DEPENDS+=	devel/gettext
CONFIGURE_ENV+=	SHLIBEXT=""
LDSTATIC=	${STATIC}
.else
WANTLIB+=	iconv intl
LIB_DEPENDS+=	devel/gettext
LDSTATIC=
.endif

# autom4te
TEST_DEPENDS=	devel/autoconf/2.69
TEST_ENV=	AUTOCONF_VERSION=2.69
# without GNU m4, commands with leading parenthesis are mis-expanded
TEST_DEPENDS+=	devel/m4
TEST_ENV+=	M4=${LOCALBASE}/bin/gm4

# do not rebuild tar.info
post-patch:
	touch -r ${WRKSRC}/doc/stamp-vti ${WRKSRC}/configure

.include <bsd.port.mk>
