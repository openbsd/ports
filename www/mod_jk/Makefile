# $OpenBSD: Makefile,v 1.28 2014/03/13 17:33:27 sthen Exp $

COMMENT=		Apache-Tomcat AJP Connector

V=			1.2.37
REVISION=		0
DISTNAME=		tomcat-connectors-${V}-src
PKGNAME=		mod_jk-${V}
CATEGORIES=		www

HOMEPAGE=		http://tomcat.apache.org/connectors-doc/index.html

MODULES+=		apache-module

# Apache Software License 2.0
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_APACHE:=tomcat/tomcat-connectors/jk/}

NO_TEST=		Yes
USE_GMAKE=		Yes

MODAPACHE_NAME=		jk
MODAPACHE_FILE=		${MODAPACHE_LOCATION}/apache-1.3/mod_jk.so

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-apxs=${MODAPACHE_APXS}
CONFIGURE_ENV+=		CFLAGS='${CFLAGS} -DCHROOTED_APACHE'

WRKSRC=			${WRKDIST}/native
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/scripts/build/unix

EXAMPLES=		workers.properties workers.properties.minimal
DOCDIR=			${PREFIX}/share/doc/mod_jk
SUBST_VARS=		DOCDIR

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mod_jk
	${INSTALL_DATA} ${FILESDIR}/mod_jk.conf ${PREFIX}/share/examples/mod_jk
.for file in ${EXAMPLES}
	${INSTALL_DATA} ${WRKSRC}/../conf/${file} ${PREFIX}/share/examples/mod_jk
.endfor
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/LICENSE ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/NOTICE ${DOCDIR}
	@${MODAPACHE_CREATE_ENABLE_SCRIPT}
	${MODAPACHE_INSTALL}

.include <bsd.port.mk>
