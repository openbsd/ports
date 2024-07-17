COMMENT=	database drivers for Sybase/Microsoft SQL Server

DISTNAME=	freetds-1.4.20

SHARED_LIBS +=  ct                   6.1      # 4.0
SHARED_LIBS +=  sybdb                8.1      # 6.0
SHARED_LIBS +=  tdsodbc              2.0      # unknown

CATEGORIES=	databases

HOMEPAGE=	https://www.freetds.org/

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

SITES=		https://www.freetds.org/files/stable/ \
		ftp://ftp.freetds.org/pub/freetds/stable/

# LGPLv2+ (most things) GPLv2+ (fisql, tdspool) FDL (docs)
PERMIT_PACKAGE=	Yes

WANTLIB += brotlidec brotlienc c curses gmp gnutls hogweed iconv
WANTLIB += idn2 intl iodbc iodbcinst nettle p11-kit pthread readline
WANTLIB += tasn1 unistring z zstd

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

# buildtime detected in doc/Makefile
BUILD_DEPENDS=	textproc/xmlto
LIB_DEPENDS=	converters/libiconv \
		databases/iodbc,bootstrap,no_admin,-main \
		security/gnutls

# requires database server
TEST_IS_INTERACTIVE= Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	ac_cv_prog_DOXYGEN=
CONFIGURE_ARGS=	--enable-static \
		--with-iodbc="${LOCALBASE}" \
		--with-libiconv-prefix="${LOCALBASE}" \
		--with-gnutls

# picks up com_err.h from e2fsprogs for gssapi support
CONFIGURE_ENV+=	ac_cv_header_com_err_h=no

# doesn't install this header if already present in the system
CONFIGURE_ENV+=	ac_cv_header_odbcss_h=no

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/freetds

pre-configure:
	sed -i 's,/etc/odbc.ini,${SYSCONFDIR}/iodbc/odbc.ini,' \
		${WRKSRC}/src/odbc/connectparams.c

post-install:
	rm -rf ${PREFIX}/share/doc/freetds

.include <bsd.port.mk>
