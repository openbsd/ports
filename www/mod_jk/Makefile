# $OpenBSD: Makefile,v 1.17 2009/06/03 00:48:51 pyr Exp $

COMMENT=		Apache-Tomcat AJP Connector

V=			1.2.26
DISTNAME=		tomcat-connectors-${V}-src
PKGNAME=		mod_jk-${V}p0
CATEGORIES=		www

HOMEPAGE=		http://tomcat.apache.org/connectors-doc/index.html

MAINTAINER=		Kurt Miller <kurt@openbsd.org>

MODULES+=		apache-module

# Apache Software License 2.0
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_APACHE:=tomcat/tomcat-connectors/jk/source/jk-$V/}

SEPARATE_BUILD=		concurrent
NO_REGRESS=		Yes
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes

MODAPACHE_NAME=		jk
MODAPACHE_FILE=		${MODAPACHE_LOCATION}/apache-1.3/mod_jk.so

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-apxs=/usr/sbin/apxs
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
	sed 's,/usr/local,${TRUEPREFIX},' \
		< ${FILESDIR}/README.OpenBSD >${WRKBUILD}/README.OpenBSD
	${INSTALL_DATA} ${WRKBUILD}/README.OpenBSD ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/LICENSE ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/NOTICE ${DOCDIR}
	@${MODAPACHE_CREATE_ENABLE_SCRIPT}
	${MODAPACHE_INSTALL}

.include <bsd.port.mk>
