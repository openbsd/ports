# $OpenBSD: Makefile,v 1.36 2010/05/02 11:36:27 sthen Exp $

COMMENT=	database drivers for Sybase/Microsoft SQL Server

V=		0.82
PATCHVER=	20090903
DISTNAME=	freetds-$V
PKGNAME=	${DISTNAME}.1pre${PATCHVER}p0
PATCHFILES=	freetds-post82-${PATCHVER}.diff.fixed.gz:0

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

WANTLIB=	c ncurses readline pthread z

MASTER_SITES=	ftp://ftp.ibiblio.org/pub/Linux/ALPHA/freetds/stable/

MODULES=	devel/gettext
BUILD_DEPENDS=	::devel/doxygen
LIB_DEPENDS=	iodbc,iodbcinst::databases/iodbc,-main \
		gcrypt::security/libgcrypt \
		gnutls::security/gnutls \
		gpg-error::security/libgpg-error \
		tasn1::security/libtasn1

FLAVORS=	msdblib
FLAVOR?=

USE_LIBTOOL=	Yes
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
	@${SUBST_CMD} ${WRKSRC}/src/odbc/connectparams.c

post-install:
	@mkdir ${PREFIX}/share/examples/freetds
	${INSTALL_DATA} ${WRKSRC}/freetds.conf \
		${PREFIX}/share/examples/freetds/freetds.conf-sample
	${INSTALL_DATA} ${WRKSRC}/src/pool/pool.conf \
		${PREFIX}/share/examples/freetds/pool.conf-sample
	@cd ${PREFIX}/lib && ln -s libtdsodbc.so.${LIBtdsodbc_VERSION} \
		libtdsodbc.so
	@mv ${PREFIX}/share/doc/freetds-$V.1.dev.20090930 \
		${PREFIX}/share/doc/freetds

.include <bsd.port.mk>
