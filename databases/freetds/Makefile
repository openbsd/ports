# $OpenBSD: Makefile,v 1.54 2011/11/11 11:37:54 espie Exp $

COMMENT=	database drivers for Sybase/Microsoft SQL Server

DISTNAME=	freetds-0.91
REVISION=	0

SHARED_LIBS += ct                   4.0      # .4.0
SHARED_LIBS += sybdb                6.0      # .5.0
SHARED_LIBS += tdsodbc              0.0      # .0.0

CATEGORIES=	databases

HOMEPAGE=	http://www.freetds.org/
# also http://freetds.schemamania.org/ http://freetds.sourceforge.net/

# LGPLv2+ (most things) GPLv2+ (fisql, tdspool) FDL (docs)
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c iodbc iodbcinst ncurses pthread readline

MASTER_SITES=	http://www.ibiblio.org/pub/Linux/ALPHA/freetds/stable/

AUTOCONF_VERSION=2.65
AUTOMAKE_VERSION=1.11
MODULES=	devel/gettext
BUILD_DEPENDS=  devel/doxygen,no_gui,bootstrap>=1.7.2 \
		devel/libtool,-ltdl \
		textproc/docbook-dsssl \
		textproc/openjade \
		${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS}
LIB_DEPENDS=	databases/iodbc,-main

# requires database server
REGRESS_IS_INTERACTIVE=Yes

USE_LIBTOOL=	Yes
USE_GROFF=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-threadsafe \
		--enable-static \
		--with-iodbc="${LOCALBASE}" \
		--with-libiconv-prefix="${LOCALBASE}" \
		--with-tdsver=7.1

FLAVOR?=
FLAVORS=	openssl
.if ${FLAVOR:Mopenssl}
CONFIGURE_ARGS+=	--with-openssl
WANTLIB+=		crypto ssl
PERMIT_PACKAGE_CDROM=	incompatible license
PERMIT_PACKAGE_FTP=	incompatible license
.else
LIB_DEPENDS+=		security/gnutls
CONFIGURE_ARGS+=	--with-gnutls
WANTLIB+=		gmp gnutls hogweed nettle p11-kit tasn1 z
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
.endif

CONFIGURE_ENV=	CFLAGS="${CFLAGS} -I${LOCALBASE}/include -L${LOCALBASE}/lib"

MAKE_ENV=	RM=rm \
		DOCBOOK_DSL=${LOCALBASE}/share/sgml/docbook/dsssl/modular/html/docbook.dsl \
		SGML_CATALOG_FILES=${LOCALBASE}/share/sgml/catalog:${LOCALBASE}/share/sgml/openjade/catalog
FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/freetds
DOC=		share/doc/freetds
SUBST_VARS=	DOC V

pre-configure:
	cd ${WRKSRC}; \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		NOCONFIGURE=1 ./autogen.sh
	@${SUBST_CMD} ${WRKSRC}/src/odbc/connectparams.c

post-install:
	cd ${PREFIX}/lib && ln -s libtdsodbc.so.${LIBtdsodbc_VERSION} \
		libtdsodbc.so; \
	mv ${PREFIX}/share/doc/freetds-* ${PREFIX}/share/doc/freetds

.include <bsd.port.mk>
