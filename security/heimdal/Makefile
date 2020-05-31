# $OpenBSD: Makefile,v 1.35 2020/05/31 08:04:37 ajacoutot Exp $

COMMENT-main=		Kerberos 5 implementation
COMMENT-devel-docs=	Heimdal C functions documentation
COMMENT-libs=		Heimdal libraries and headers

V=			7.7.0
DISTNAME=		heimdal-${V}

PKGNAME-main=		${DISTNAME}
PKGNAME-devel-docs=	heimdal-devel-docs-${V}
PKGNAME-libs=		heimdal-libs-${V}

REVISION-main=		0
REVISION-devel-docs=	0
REVISION-libs=		0

CATEGORIES=		security net

SHARED_LIBS +=  roken                3.0      # 19.0
SHARED_LIBS +=  heimbase             2.0      # 1.0
SHARED_LIBS +=  heimedit             1.0      # 0.36
SHARED_LIBS +=  sl                   1.0      # 2.1
SHARED_LIBS +=  wind                 3.0      # 0.0
SHARED_LIBS +=  asn1                 22.0     # 8.0
SHARED_LIBS +=  heimsqlite           1.0      # unknown
SHARED_LIBS +=  hcrypto              0.0      # 5.0
SHARED_LIBS +=  hx509                1.0      # 5.0
SHARED_LIBS +=  krb5                 22.0     # 26.0
SHARED_LIBS +=  heimntlm             1.0      # 1.0
SHARED_LIBS +=  gssapi               9.0      # 3.0
SHARED_LIBS +=  hdb                  3.1      # 11.0
SHARED_LIBS +=  kadm5srv             3.0      # 8.1
SHARED_LIBS +=  kadm5clnt            3.0      # 7.1
SHARED_LIBS +=  kdc                  3.0      # 2.0

HOMEPAGE=		https://www.heimdal.software/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# BSD
PERMIT_PACKAGE=		Yes

MULTI_PACKAGES=		-main -devel-docs -libs

MASTER_SITES=		https://github.com/heimdal/heimdal/releases/download/heimdal-${V}/

BUILD_DEPENDS=		devel/bison \
			converters/p5-JSON

SYSCONFDIR=		${BASESYSCONFDIR}/heimdal

WANTLIB += c crypto curses pthread util

WANTLIB-main=		${WANTLIB} com_err util
WANTLIB-main +=		heimdal/lib/asn1
WANTLIB-main +=		heimdal/lib/gssapi
WANTLIB-main +=		heimdal/lib/hcrypto
WANTLIB-main +=		heimdal/lib/hdb
WANTLIB-main +=		heimdal/lib/heimbase
WANTLIB-main +=		heimdal/lib/heimedit
WANTLIB-main +=		heimdal/lib/heimntlm
WANTLIB-main +=		heimdal/lib/heimsqlite
WANTLIB-main +=		heimdal/lib/hx509
WANTLIB-main +=		heimdal/lib/kadm5clnt
WANTLIB-main +=		heimdal/lib/kadm5srv
WANTLIB-main +=		heimdal/lib/kdc
WANTLIB-main +=		heimdal/lib/krb5
WANTLIB-main +=		heimdal/lib/roken
WANTLIB-main +=		heimdal/lib/sl
WANTLIB-main +=		heimdal/lib/wind
LIB_DEPENDS-main=	${BASE_PKGPATH},-libs=${V}

PKG_ARCH-devel-docs=	*
WANTLIB-devel-docs=	# empty

WANTLIB-libs=		${WANTLIB} com_err
WANTLIB-libs +=		com_err
LIB_DEPENDS-libs=	sysutils/e2fsprogs

MODGNU_CONFIG_GUESS_DIRS= \
			${WRKSRC} \
			${WRKSRC}/lib/libedit

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		LDFLAGS="-L${LOCALBASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include"
CONFIGURE_ARGS=		--disable-afs-support \
			--disable-mdb-db \
			--disable-otp

# make sure we only pickup db from base
CONFIGURE_ENV +=	ac_cv_funclib_db_create=no \
			ac_cv_header_db3_db_h=no \
			ac_cv_header_db4_db_h=no \
			ac_cv_header_db5_db_h=no \
			ac_cv_header_db5_db_h=no

# symbol versioning suspected to trigger weird linking problems
# with our binutils
CONFIGURE_ENV +=	rk_cv_version_script=no

# do not pick-up libexecinfo if installed
CONFIGURE_ENV +=	ac_cv_header_execinfo_h=no

# install bins, libs and includes under a non-default PATH/PREFIX
CONFIGURE_ARGS +=	--bindir=${PREFIX}/heimdal/bin \
			--sbindir=${PREFIX}/heimdal/sbin \
			--libexecdir=${PREFIX}/heimdal/libexec \
			--libdir=${PREFIX}/heimdal/lib \
			--includedir=${PREFIX}/heimdal/include

MAKE_ENV=		INSTALL_CATPAGES=no

pre-configure:
	${SUBST_CMD} ${WRKSRC}/tools/krb5-config.in

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/heimdal
	${INSTALL_DATA} ${FILESDIR}/krb5.conf \
		${PREFIX}/share/examples/heimdal/

.include <bsd.port.mk>
