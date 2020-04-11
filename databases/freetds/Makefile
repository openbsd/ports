# $OpenBSD: Makefile,v 1.106 2020/04/11 14:23:59 sthen Exp $

COMMENT=	database drivers for Sybase/Microsoft SQL Server

DISTNAME=	freetds-1.1.30

SHARED_LIBS +=  ct                   6.1      # 4.0
SHARED_LIBS +=  sybdb                8.1      # 6.0
SHARED_LIBS +=  tdsodbc              2.0      # unknown

CATEGORIES=	databases

HOMEPAGE=	https://www.freetds.org/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

MASTER_SITES=	https://www.freetds.org/files/stable/ \
		ftp://ftp.freetds.org/pub/freetds/stable/

# LGPLv2+ (most things) GPLv2+ (fisql, tdspool) FDL (docs)
PERMIT_PACKAGE=	Yes

WANTLIB += c curses ffi gmp gnutls hogweed iconv idn2 intl iodbc
WANTLIB += iodbcinst nettle p11-kit pthread readline tasn1 unistring

LIB_DEPENDS=	converters/libiconv \
		databases/iodbc,-main \
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

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/freetds

pre-configure:
	sed -i 's,/etc/odbc.ini,${SYSCONFDIR}/iodbc/odbc.ini,' \
		${WRKSRC}/src/odbc/connectparams.c

post-install:
	rm -rf ${PREFIX}/share/doc/freetds

.include <bsd.port.mk>
