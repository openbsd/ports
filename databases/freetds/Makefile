# $OpenBSD: Makefile,v 1.88 2019/02/19 22:49:31 sthen Exp $

COMMENT=	database drivers for Sybase/Microsoft SQL Server

DISTNAME=	freetds-1.00.111
# when moving to 1.1, drop --with-tdsver (default is then auto,
# which is improved in 1.1).

SHARED_LIBS +=  ct                   6.1      # 4.0
SHARED_LIBS +=  sybdb                8.0      # 6.0
SHARED_LIBS +=  tdsodbc              2.0      # unknown

CATEGORIES=	databases

HOMEPAGE=	http://www.freetds.org/

MASTER_SITES=	http://www.freetds.org/files/stable/ \
		ftp://ftp.freetds.org/pub/freetds/stable/

# LGPLv2+ (most things) GPLv2+ (fisql, tdspool) FDL (docs)
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c ffi gcrypt gmp gnutls gpg-error hogweed iconv idn2 intl
WANTLIB += iodbc iodbcinst ncurses nettle p11-kit pthread readline tasn1
WANTLIB += unistring z

AUTOCONF_VERSION= 2.65
AUTOMAKE_VERSION= 1.11
BUILD_DEPENDS+=	devel/gettext \
		devel/libtool \
		${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS}

LIB_DEPENDS=	converters/libiconv \
		databases/iodbc,-main \
		security/gnutls \
		security/libgcrypt

# requires database server
TEST_IS_INTERACTIVE= Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	ac_cv_prog_DOXYGEN=
CONFIGURE_ARGS=	--enable-static \
		--with-iodbc="${LOCALBASE}" \
		--with-libiconv-prefix="${LOCALBASE}" \
		--with-gnutls \
		--with-tdsver=7.3

# picks up com_err.h from e2fsprogs for gssapi support
CONFIGURE_ENV+=	ac_cv_header_com_err_h=no

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/freetds

do-gen:
	cd ${WRKSRC}; ${AUTOCONF_ENV} NOCONFIGURE=1 ./autogen.sh
	sed -i 's,/etc/odbc.ini,${SYSCONFDIR}/iodbc/odbc.ini,' \
		${WRKSRC}/src/odbc/connectparams.c

post-install:
	rm -rf ${PREFIX}/share/doc/freetds

.include <bsd.port.mk>
