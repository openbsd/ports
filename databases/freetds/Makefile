# $OpenBSD: Makefile,v 1.31 2009/08/01 14:11:19 sthen Exp $

COMMENT=	database drivers for Sybase/Microsoft SQL Server

V=		0.82
PATCHVER=	20090707
DISTNAME=	freetds-$V
PATCHFILES=	freetds-post82-${PATCHVER}.diff.gz:0
PKGNAME=	${DISTNAME}.0.${PATCHVER}

SHARED_LIBS += ct                   4.0      # .4.0
SHARED_LIBS += sybdb                6.0      # .5.0
SHARED_LIBS += tdsodbc              0.0      # .0.0

CATEGORIES=	databases

HOMEPAGE=	http://www.freetds.org/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES0=	http://spacehopper.org/mirrors/

WANTLIB=	c ncurses readline pthread

MASTER_SITES=	ftp://ftp.ibiblio.org/pub/Linux/ALPHA/freetds/stable/

MODULES=	converters/libiconv
LIB_DEPENDS=	iodbc,iodbcinst::databases/iodbc,-main

FLAVORS=	msdblib
FLAVOR?=

USE_LIBTOOL=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-static \
		--with-libiconv-prefix="${LOCALBASE}" \
		--disable-threadsafe \
		--with-iodbc="${LOCALBASE}"

CONFIGURE_ENV=	CFLAGS="${CFLAGS} -I${LOCALBASE}/include -L${LOCALBASE}/lib"

.if $(FLAVOR:L:Mmsdblib)
CONFIGURE_ARGS+=--enable-msdblib
.endif

MAKE_ENV=	RM=rm
DOC=		share/doc/freetds-$V
SUBST_VARS=	DOC V

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/src/odbc/connectparams.c

post-install:
	@mkdir ${PREFIX}/share/examples/freetds
	${INSTALL_DATA} ${WRKSRC}/freetds.conf \
		${PREFIX}/share/examples/freetds/freetds.conf-sample
	${INSTALL_DATA} ${WRKSRC}/src/pool/pool.conf \
		${PREFIX}/share/examples/freetds/pool.conf-sample
	@cd ${PREFIX}/lib && ln -s libtdsodbc.so.${LIBtdsodbc_VERSION} \
		libtdsodbc.so

.include <bsd.port.mk>
