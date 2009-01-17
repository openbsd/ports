# $OpenBSD: Makefile,v 1.9 2009/01/17 11:42:03 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	H.323 gatekeeper

DISTNAME=	gnugk-2.2.8
CATEGORIES=	net telephony

HOMEPAGE=	http://www.gnugk.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=openh323gk/}

WANTLIB=	SDL avutil c crypto expat lber ldap ldap_r m ossaudio \
		pt pthread sasl2 ssl stdc++

LIB_DEPENDS=	h323.>=2::net/openh323 \
		sqlite3.>=12::databases/sqlite3

USE_GMAKE=	Yes
ALL_TARGET=	optshared addpasswd
NO_REGRESS=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--enable-radius \
		--enable-sqlite \
		--disable-firebird \
		--disable-unixodbc

MAKE_ENV+=	CC=${CC} CPLUS=${CXX} \
		STDCCFLAGS="${STDCCFLAGS} -I${LOCALBASE}/include/openh323" \
		SYSLIBDIR=`ptlib-config --libdir`

FLAVORS=	mysql pgsql
FLAVOR?=

.if ${FLAVOR:L:Mmysql}
WANTLIB+=	z
LIB_DEPENDS+=	mysqlclient.>=18::databases/mysql
CONFIGURE_ARGS+=--enable-mysql
.else
CONFIGURE_ARGS+=--disable-mysql
.endif

.if ${FLAVOR:L:Mpgsql}
LIB_DEPENDS+=	pq.>=5::databases/postgresql
CONFIGURE_ARGS+=--enable-pgsql \
		--with-pgsql-lib-dir=${LOCALBASE}/lib \
		--with-pgsql-include-dir=${LOCALBASE}/include/postgresql
.else
CONFIGURE_ARGS+=--disable-pgsql
.endif

pre-configure:
	${SUBST_CMD} ${WRKSRC}/docs/gnugk.1

post-install:
	${INSTALL_MAN_DIR} ${PREFIX}/man/man1/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gnugk/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gnugk/
	${INSTALL_MAN} ${WRKSRC}/docs/gnugk.1 ${PREFIX}/man/man1/
	${INSTALL_DATA} ${WRKSRC}/docs/*.txt ${PREFIX}/share/doc/gnugk/
	cp ${WRKSRC}/etc/* ${PREFIX}/share/examples/gnugk/

.include <bsd.port.mk>
