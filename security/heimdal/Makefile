# $OpenBSD: Makefile,v 1.14 2014/09/04 08:20:16 ajacoutot Exp $

COMMENT-main=		Kerberos 5 implementation
COMMENT-devel-docs=	Heimdal C functions documentation
COMMENT-libs=		Heimdal libraries and headers

V=			1.5.3
DISTNAME=		heimdal-${V}

PKGNAME-main=		${DISTNAME}
PKGNAME-devel-docs=	heimdal-devel-docs-${V}
PKGNAME-libs=		heimdal-libs-${V}

REVISION-main=		0

CATEGORIES=		security net

SHARED_LIBS +=  heimbase             1.0      # 1.0
SHARED_LIBS +=  roken                2.0      # 19.0
SHARED_LIBS +=  heimedit             0.0      # 0.36
SHARED_LIBS +=  sl                   0.0      # 2.1
SHARED_LIBS +=  wind                 2.0      # 0.0
SHARED_LIBS +=  asn1                 21.0     # 8.0
SHARED_LIBS +=  heimsqlite           0.0      # unknown
SHARED_LIBS +=  hx509                0.0      # 5.0
SHARED_LIBS +=  krb5                 21.0     # 26.0
SHARED_LIBS +=  heimntlm             0.0      # 1.0
SHARED_LIBS +=  kafs                 21.0     # 5.1
SHARED_LIBS +=  gssapi               8.0      # 3.0
SHARED_LIBS +=  hdb                  2.0      # 11.0
SHARED_LIBS +=  kadm5srv             2.0      # 8.1
SHARED_LIBS +=  kadm5clnt            2.0      # 7.1
SHARED_LIBS +=  kdc                  2.0      # 2.0

HOMEPAGE=		http://www.h5l.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MULTI_PACKAGES=		-main -devel-docs -libs

MASTER_SITES=		http://www.h5l.org/dist/src/

BUILD_DEPENDS=		devel/bison

SYSCONFDIR=		${BASESYSCONFDIR}/heimdal

WANTLIB += c crypto curses pthread termcap

WANTLIB-main=		${WANTLIB} com_err util
WANTLIB-main +=		heimdal/lib/asn1
WANTLIB-main +=		heimdal/lib/gssapi
WANTLIB-main +=		heimdal/lib/hdb
WANTLIB-main +=		heimdal/lib/heimbase
WANTLIB-main +=		heimdal/lib/heimedit
WANTLIB-main +=		heimdal/lib/heimntlm
WANTLIB-main +=		heimdal/lib/heimsqlite
WANTLIB-main +=		heimdal/lib/hx509
WANTLIB-main +=		heimdal/lib/kadm5clnt
WANTLIB-main +=		heimdal/lib/kadm5srv
WANTLIB-main +=		heimdal/lib/kafs
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
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--disable-afs-support \
			--disable-otp \
			--without-x

# make sure we only pickup db from base
CONFIGURE_ENV +=	ac_cv_funclib_db_create=no \
			ac_cv_header_db3_db_h=no \
			ac_cv_header_db4_db_h=no \
			ac_cv_header_db5_db_h=no

# do not pick-up libexecinfo if installed
CONFIGURE_ENV +=	ac_cv_header_execinfo_h=no

# install bins, libs and includes under a non-default PATH/PREFIX
CONFIGURE_ARGS +=	--bindir=${PREFIX}/heimdal/bin \
			--sbindir=${PREFIX}/heimdal/sbin \
			--libexecdir=${PREFIX}/heimdal/libexec \
			--libdir=${PREFIX}/heimdal/lib \
			--includedir=${PREFIX}/heimdal/include

MAKE_ENV=		INSTALL_CATPAGES=no

RM_BIN=			bin/afslog \
			bin/ftp \
			bin/login \
			bin/pfrom \
			bin/su \
			libexec/ftpd \
			libexec/push

RM_MAN=			man1/afslog.1 \
			man1/ftp.1 \
			man1/kx.1 \
			man1/login.1 \
			man1/pfrom.1 \
			man1/rxterm.1 \
			man1/su.1 \
			man1/rxtelnet.1 \
			man1/tenletxr.1 \
			man1/xnlock.1 \
			man5/ftpusers.5 \
			man5/login.access.5 \
			man8/ftpd.8 \
			man8/kxd.8 \
			man8/push.8

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/heimdal
	${INSTALL_DATA} ${FILESDIR}/krb5.conf \
		${PREFIX}/share/examples/heimdal/
	# fix bogus symlink
	cd ${PREFIX}/man/man5/ && \
		ln -sf mech.5 qop.5
	# remove until proven useful
.for i in ${RM_BIN}
	rm ${PREFIX}/heimdal/$i
.endfor
.for i in ${RM_MAN}
	rm ${PREFIX}/man/$i
.endfor

.include <bsd.port.mk>
