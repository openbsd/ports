# $OpenBSD: Makefile,v 1.15 2010/11/11 14:00:45 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	H.323 gatekeeper

DISTNAME=	gnugk-2.3.2

CATEGORIES=	net telephony

HOMEPAGE=	http://www.gnugk.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=openh323gk/}

WANTLIB=	SDL avutil c crypto expat lber ldap ldap_r m \
		pt pthread sasl2 ssl stdc++ h323.>=3 sqlite3.>=12

LIB_DEPENDS=	::net/h323plus \
		::databases/sqlite3

USE_GMAKE=	Yes
USE_GROFF =	Yes
ALL_TARGET=	optshared addpasswd
NO_REGRESS=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--enable-radius \
		--enable-sqlite \
		--enable-h46023 \
		--disable-h46018 \
		--disable-firebird \
		--disable-unixodbc

MAKE_ENV+=	CC=${CC} CPLUS=${CXX} \
		STDCCFLAGS="${STDCCFLAGS} -I${LOCALBASE}/include/openh323" \
		SYSLIBDIR=`ptlib-config --libdir`

FLAVORS=	mysql pgsql
FLAVOR?=

.if ${FLAVOR:L:Mmysql}
WANTLIB+=	z mysqlclient.>=18
LIB_DEPENDS+=	::databases/mysql
CONFIGURE_ARGS+=--enable-mysql
.else
CONFIGURE_ARGS+=--disable-mysql
.endif

.if ${FLAVOR:L:Mpgsql}
WANTLIB +=	pq.>=5
LIB_DEPENDS+=	::databases/postgresql
CONFIGURE_ARGS+=--enable-pgsql \
		--with-pgsql-lib-dir=${LOCALBASE}/lib \
		--with-pgsql-include-dir=${LOCALBASE}/include/postgresql
.else
CONFIGURE_ARGS+=--disable-pgsql
.endif

pre-configure:
	${SUBST_CMD} ${WRKSRC}/docs/gnugk.1
	perl -pi -e "s,!!LOCALBASE!!,${LOCALBASE},g" ${WRKSRC}/configure

post-install:
	${INSTALL_MAN_DIR} ${PREFIX}/man/man1/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gnugk/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gnugk/
	${INSTALL_MAN} ${WRKSRC}/docs/gnugk.1 ${PREFIX}/man/man1/
	${INSTALL_DATA} ${WRKSRC}/docs/*.txt ${PREFIX}/share/doc/gnugk/
	cp ${WRKSRC}/etc/* ${PREFIX}/share/examples/gnugk/

.include <bsd.port.mk>
