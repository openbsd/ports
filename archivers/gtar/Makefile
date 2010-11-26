# $OpenBSD: Makefile,v 1.61 2010/11/26 07:07:56 espie Exp $

COMMENT=	GNU version of the traditional tape archiver

DISTNAME=	tar-1.25
PKGNAME=	g${DISTNAME}
CATEGORIES=	archivers
HOMEPAGE=	http://www.gnu.org/software/tar/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_GNU:=tar/}
EXTRACT_SUFX=	.tar.xz

BUILD_DEPENDS=	archivers/xz
EXTRACT_CASES=	*.tar.xz) \
		${LOCALBASE}/bin/xz -dc ${FULLDISTDIR}/$$archive | ${TAR} xf -;;

MODULES=	devel/gettext
# only force dependencies for compressors that have a single-letter option
RUN_DEPENDS=	archivers/bzip2 archivers/xz

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--program-prefix=g \
		--disable-silent-rules
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib ${LDSTATIC}" \
		DEFAULT_ARCHIVE=/dev/rst0 \
		DEFAULT_RMT_COMMAND=/etc/rmt
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/build-aux

# supply result to skip a test that will abort configure if run as root
CONFIGURE_ENV+=	gl_cv_func_mknod_works=no

FLAVORS=	static
FLAVOR?=

.if ${FLAVOR:L:Mstatic}
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

.include <bsd.port.mk>
