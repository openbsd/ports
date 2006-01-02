# $OpenBSD: Makefile,v 1.8 2006/01/02 18:24:57 kurt Exp $

# This port currently only works with archs supporting dynamic loading
# and has Apache that supports DSO's.
SHARED_ONLY=		Yes

COMMENT=		"Apache-Tomcat AJP Connector"

V=			1.2.15
DISTNAME=		jakarta-tomcat-connectors-${V}-src
PKGNAME=		mod_jk-${V}
CATEGORIES=		www

HOMEPAGE=		http://tomcat.apache.org/connectors-doc/index.html

MAINTAINER=		Kurt Miller <kurt@openbsd.org>

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

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-apxs=/usr/sbin/apxs
CONFIGURE_ENV+=		CFLAGS='${CFLAGS} -DCHROOTED_APACHE'

WRKSRC=			${WRKDIR}/${DISTNAME}/jk/native
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/scripts/build/unix

EXAMPLES=		workers.properties workers.properties.minimal
DOCDIR=			${PREFIX}/share/doc/mod_jk
SUBST_VARS=		DOCDIR

do-install:
	sed 's,/usr/local,${TRUEPREFIX},' \
		< ${FILESDIR}/mod_jk-enable >${WRKSRC}/mod_jk-enable
	${INSTALL_SCRIPT} ${WRKSRC}/mod_jk-enable ${PREFIX}/sbin/mod_jk-enable
	${INSTALL_DATA} ${WRKBUILD}/apache-1.3/mod_jk.so.0.0 ${PREFIX}/lib/mod_jk.so
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mod_jk
	${INSTALL_DATA} ${FILESDIR}/mod_jk.conf ${PREFIX}/share/examples/mod_jk
.for file in ${EXAMPLES}
	${INSTALL_DATA} ${WRKSRC}/../conf/${file} ${PREFIX}/share/examples/mod_jk
.endfor
	${INSTALL_DATA_DIR} ${DOCDIR}
	sed 's,/usr/local,${TRUEPREFIX},' \
		< ${FILESDIR}/README.OpenBSD >${WRKSRC}/README.OpenBSD
	${INSTALL_DATA} ${WRKSRC}/README.OpenBSD ${DOCDIR}
	${INSTALL_DATA} ${WRKDIR}/${DISTNAME}/LICENSE ${DOCDIR}
	${INSTALL_DATA} ${WRKDIR}/${DISTNAME}/NOTICE ${DOCDIR}

.include "bsd.port.mk"
