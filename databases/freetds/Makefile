# $OpenBSD: Makefile,v 1.67 2015/06/19 12:18:31 sthen Exp $

COMMENT=	database drivers for Sybase/Microsoft SQL Server

DISTNAME=	freetds-0.95.5

SHARED_LIBS +=  ct                   6.0      # 4.0
SHARED_LIBS +=  sybdb                8.0      # 5.0
SHARED_LIBS +=  tdsodbc              2.0      # unknown

CATEGORIES=	databases

HOMEPAGE=	http://www.freetds.org/
# also http://freetds.schemamania.org/ http://freetds.sourceforge.net/

MASTER_SITES=	ftp://ftp.freetds.org/pub/freetds/stable/

# LGPLv2+ (most things) GPLv2+ (fisql, tdspool) FDL (docs)
# No specific exception for OpenSSL, however the GPL has a special
# exception for "anything that is normally distributed...with the major
# components...of the operating system on which the executable runs,
# unless that component itself accompanies the executable."
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto iodbc iodbcinst ncurses pthread readline ssl

MODULES=	converters/libiconv

### AUTOHELL (pre-configure)
AUTOCONF_VERSION=2.65
AUTOMAKE_VERSION=1.11
BUILD_DEPENDS+=	devel/gettext \
		devel/libtool \
		${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS}
### end of AUTOHELL

LIB_DEPENDS=	databases/iodbc,-main

# requires database server
TEST_IS_INTERACTIVE=Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	ac_cv_prog_DOXYGEN=
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-static \
		--with-iodbc="${LOCALBASE}" \
		--with-libiconv-prefix="${LOCALBASE}" \
		--with-openssl \
		--with-tdsver=7.3

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/freetds

pre-configure:
	cd ${WRKSRC}; \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		NOCONFIGURE=1 ./autogen.sh
	perl -pi -e 's,/etc/odbc.ini,${SYSCONFDIR}/iodbc/odbc.ini,' \
		${WRKSRC}/src/odbc/connectparams.c

.include <bsd.port.mk>
