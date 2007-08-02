# $OpenBSD: Makefile,v 1.3 2007/08/02 14:39:36 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	H.323 gatekeeper

DISTNAME=	gnugk-2.2.6
PKGNAME=	${DISTNAME}p0
CATEGORIES=	net telephony

HOMEPAGE=	http://www.gnugk.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=openh323gk/}

WANTLIB=	avutil c crypto expat m ossaudio pt pthread ssl stdc++

LIB_DEPENDS=	h323.>=1::net/openh323

GNUGK_ID=	_gnugk
SUBST_VARS=	GNUGK_ID

USE_GMAKE=	Yes
ALL_TARGET=	optshared addpasswd
NO_REGRESS=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--enable-radius \
		--disable-firebird

MAKE_ENV+=	CC=${CC} CPLUS=${CXX} \
		STDCCFLAGS="${STDCCFLAGS} -I${LOCALBASE}/include/openh323" \
		SYSLIBDIR=`ptlib-config --libdir` \
		PTLIB_FILE=libpt.`ptlib-config --sharedlibext`.`ptlib-config --version`

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
		--with-pgsql-include-dir=${LOCALBASE}/include/postgresql
.else
CONFIGURE_ARGS+=--disable-pgsql
.endif

pre-configure:
	@perl -pi -e 's,!!SYSCONFDIR!!,${SYSCONFDIR},g' \
		${WRKSRC}/docs/gnugk.1

post-install:
	${INSTALL_MAN_DIR} ${PREFIX}/man/man1/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gnugk/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gnugk/
	${INSTALL_MAN} ${WRKSRC}/docs/gnugk.1 ${PREFIX}/man/man1/
	${INSTALL_DATA} ${WRKSRC}/docs/*.txt ${PREFIX}/share/doc/gnugk/
	cp ${WRKSRC}/etc/* ${PREFIX}/share/examples/gnugk/

.include <bsd.port.mk>
