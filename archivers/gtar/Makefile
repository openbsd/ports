# $OpenBSD: Makefile,v 1.85 2019/07/16 21:29:41 sthen Exp $

COMMENT=	GNU version of the traditional tape archiver

DISTNAME=	tar-1.32
PKGNAME=	g${DISTNAME}
REVISION=	1
CATEGORIES=	archivers
HOMEPAGE=	https://www.gnu.org/software/tar/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv3+
PERMIT_PACKAGE=	Yes

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
# supply result to skip a test that will abort configure if run as root
CONFIGURE_ENV+=	gl_cv_func_mknod_works=no

MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/build-aux

FLAVORS=	static
FLAVOR?=

.if ${FLAVOR:Mstatic}
BUILD_DEPENDS+=	devel/gettext,-runtime
CONFIGURE_ENV+=	SHLIBEXT=""
LDSTATIC=	${STATIC}
.else
WANTLIB+=	iconv intl
LIB_DEPENDS+=	devel/gettext,-runtime
LDSTATIC=
.endif

# do not rebuild tar.info
post-patch:
	touch -r ${WRKSRC}/doc/stamp-vti ${WRKSRC}/configure

# numeric.at needs a working chown
pre-test:
	@rm -f ${WRKDIR}/bin/chown

.include <bsd.port.mk>
