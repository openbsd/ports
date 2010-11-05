# $OpenBSD: Makefile,v 1.45 2010/11/05 10:25:24 sthen Exp $

COMMENT=	database drivers for Sybase/Microsoft SQL Server

V=		0.82
PATCHVER=	20100728
DISTNAME=	freetds-$V
REVISION=	3
PKGNAME=	${DISTNAME}.1pre${PATCHVER}
PATCHFILES=	freetds-post82-${PATCHVER}.diff.gz:0

SHARED_LIBS += ct                   4.0      # .4.0
SHARED_LIBS += sybdb                6.0      # .5.0
SHARED_LIBS += tdsodbc              0.0      # .0.0

CATEGORIES=	databases

HOMEPAGE=	http://www.freetds.org/
# or, if they lunch out the dns registration again:
# http://freetds.schemamania.org/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c iodbc iodbcinst gcrypt gnutls gpg-error ncurses
WANTLIB += pthread readline tasn1 z

MASTER_SITES=	ftp://ftp.ibiblio.org/pub/Linux/ALPHA/freetds/stable/
MASTER_SITES0=	http://spacehopper.org/mirrors/

AUTOCONF_VERSION=2.59
AUTOMAKE_VERSION=1.9
MODULES=	devel/gettext
# XXX uses libtool m4 macros
BUILD_DEPENDS=	:doxygen->=1.7.2:devel/doxygen \
		::devel/libtool \
		${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS}
LIB_DEPENDS=	::databases/iodbc,-main \
		::security/libgcrypt \
		::security/gnutls \
		::security/libgpg-error \
		::security/libtasn1

FLAVORS=	msdblib
FLAVOR?=

# requires database server
REGRESS_IS_INTERACTIVE=Yes

USE_LIBTOOL=	Yes
USE_GROFF =	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-threadsafe \
		--enable-static \
		--with-tdsver=8.0 \
		--with-gnutls \
		--with-iodbc="${LOCALBASE}" \
		--with-libiconv-prefix="${LOCALBASE}"

CONFIGURE_ENV=	CFLAGS="${CFLAGS} -I${LOCALBASE}/include -L${LOCALBASE}/lib"

.if $(FLAVOR:L:Mmsdblib)
CONFIGURE_ARGS+=--enable-msdblib
.endif

MAKE_ENV=	RM=rm
DOC=		share/doc/freetds
SUBST_VARS=	DOC V

pre-configure:
	cd ${WRKSRC}/doc/doc; ln -s freetds-0.82 freetds-0.82.1
	cd ${WRKSRC}; \
	    AUTOCONF_VERSION=${AUTOCONF_VERSION} \
	    AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
	    NOCONFIGURE=1 ./autogen.sh
	@${SUBST_CMD} ${WRKSRC}/src/odbc/connectparams.c

post-install:
	@mkdir ${PREFIX}/share/examples/freetds; \
	${INSTALL_DATA} ${WRKSRC}/freetds.conf \
		${PREFIX}/share/examples/freetds/freetds.conf-sample; \
	${INSTALL_DATA} ${WRKSRC}/src/pool/pool.conf \
		${PREFIX}/share/examples/freetds/pool.conf-sample; \
	cd ${PREFIX}/lib && ln -s libtdsodbc.so.${LIBtdsodbc_VERSION} \
		libtdsodbc.so; \
	mv ${PREFIX}/share/doc/freetds-* ${PREFIX}/share/doc/freetds

.include <bsd.port.mk>
