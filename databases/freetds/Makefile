# $OpenBSD: Makefile,v 1.63 2015/06/10 12:49:45 ajacoutot Exp $

COMMENT=	database drivers for Sybase/Microsoft SQL Server

DISTNAME=	freetds-0.92.79
REVISION=	0

SHARED_LIBS += ct                   5.0      # .4.0
SHARED_LIBS += sybdb                7.0      # .5.0
SHARED_LIBS += tdsodbc              1.0      # .0.0

CATEGORIES=	databases

HOMEPAGE=	http://www.freetds.org/
# also http://freetds.schemamania.org/ http://freetds.sourceforge.net/

# LGPLv2+ (most things) GPLv2+ (fisql, tdspool) FDL (docs)
# No specific exception for OpenSSL, however the GPL has a special
# exception for "anything that is normally distributed...with the major
# components...of the operating system on which the executable runs,
# unless that component itself accompanies the executable."
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto iodbc iodbcinst ncurses pthread readline ssl

MASTER_SITES=	ftp://ftp.freetds.org/pub/freetds/stable/

AUTOCONF_VERSION=2.65
AUTOMAKE_VERSION=1.11
MODULES=	devel/gettext
BUILD_DEPENDS=  devel/doxygen,no_gui,bootstrap>=1.7.2 \
		devel/libtool,-main \
		textproc/docbook \
		textproc/docbook-dsssl \
		textproc/openjade \
		${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS}
LIB_DEPENDS=	databases/iodbc,-main

# requires database server
TEST_IS_INTERACTIVE=Yes

USE_GROFF=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-threadsafe \
		--enable-static \
		--with-iodbc="${LOCALBASE}" \
		--with-libiconv-prefix="${LOCALBASE}" \
		--with-openssl \
		--with-tdsver=7.1

CONFIGURE_ENV=	CFLAGS="${CFLAGS} -I${LOCALBASE}/include -L${LOCALBASE}/lib"

MAKE_ENV=	RM=rm \
		DOCBOOK_DSL=${LOCALBASE}/share/sgml/docbook/dsssl/modular/html/docbook.dsl \
		SGML_CATALOG_FILES=${LOCALBASE}/share/sgml/catalog:${LOCALBASE}/share/sgml/openjade/catalog
FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/freetds
DOC=		share/doc/freetds
SUBST_VARS=	DOC V

post-extract:
	rm -r ${WRKSRC}/doc/doc/freetds-*

pre-configure:
	cd ${WRKSRC}; \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		NOCONFIGURE=1 ./autogen.sh
	@${SUBST_CMD} ${WRKSRC}/src/odbc/connectparams.c

post-install:
	cd ${PREFIX}/lib && ln -s libtdsodbc.so.${LIBtdsodbc_VERSION} \
		libtdsodbc.so
	mv ${PREFIX}/share/doc/freetds-* ${PREFIX}/share/doc/freetds

.include <bsd.port.mk>
