# $OpenBSD: Makefile,v 1.81 2016/06/29 09:17:41 sthen Exp $

COMMENT=	database drivers for Sybase/Microsoft SQL Server

DISTNAME=	freetds-0.95.95
# 1.00 releases have problems with at least sqsh, libdbi-drivers, p5-sybperl

SHARED_LIBS +=  ct                   6.0      # 4.0
SHARED_LIBS +=  sybdb                8.0      # 6.0
SHARED_LIBS +=  tdsodbc              2.0      # unknown

CATEGORIES=	databases

HOMEPAGE=	http://www.freetds.org/

MASTER_SITES=	ftp://ftp.freetds.org/pub/freetds/stable/

# LGPLv2+ (most things) GPLv2+ (fisql, tdspool) FDL (docs)
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c ffi gmp gnutls hogweed idn intl iodbc iodbcinst ncurses
WANTLIB += nettle p11-kit pthread readline tasn1 z

MODULES=	converters/libiconv

### AUTOHELL (pre-configure)
AUTOCONF_VERSION=2.65
AUTOMAKE_VERSION=1.11
BUILD_DEPENDS+=	devel/gettext \
		devel/libtool \
		${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS}
### end of AUTOHELL

LIB_DEPENDS=	databases/iodbc,-main \
		security/gnutls

# requires database server
TEST_IS_INTERACTIVE=Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	ac_cv_prog_DOXYGEN=
CONFIGURE_ARGS=	--enable-static \
		--with-iodbc="${LOCALBASE}" \
		--with-libiconv-prefix="${LOCALBASE}" \
		--with-gnutls \
		--with-tdsver=7.3

# picks up com_err.h from e2fsprogs for gssapi support
CONFIGURE_ENV+=	ac_cv_header_com_err_h=no

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/freetds

pre-configure:
	cd ${WRKSRC}; \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		NOCONFIGURE=1 ./autogen.sh
	sed -i 's,/etc/odbc.ini,${SYSCONFDIR}/iodbc/odbc.ini,' \
		${WRKSRC}/src/odbc/connectparams.c

post-install:
	rm -rf ${PREFIX}/share/doc/freetds

.include <bsd.port.mk>
