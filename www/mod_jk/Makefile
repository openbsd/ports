# $OpenBSD: Makefile,v 1.3 2004/10/12 20:53:06 naddy Exp $

# This port currently only works with archs supporting dynamic loading
# and has Apache that supports DSO's.
NOT_FOR_ARCHS=		${NO_SHARED_ARCHS}

COMMENT=		"Apache-Tomcat AJP Connector"

V=			1.2.6
DISTNAME=		jakarta-tomcat-connectors-jk-${V}-src
PKGNAME=		mod_jk-${V}
CATEGORIES=		www

HOMEPAGE=		http://jakarta.apache.org/tomcat/tomcat-4.1-doc/jk2/

MAINTAINER=		Kurt Miller <truk@apache.org>

# Apache Software License 2.0
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_APACHE:=jakarta/tomcat-connectors/jk/source/}

SEPARATE_BUILD=		concurrent
NO_REGRESS=		Yes
USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-apxs=/usr/sbin/apxs
CONFIGURE_ENV+=		CFLAGS='${CFLAGS} -DCHROOTED_APACHE'

WRKSRC=			${WRKDIR}/${DISTNAME}/jk/native
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/scripts/build/unix

EXAMPLES=		mod_jk.conf workers.properties
DOCDIR=			${PREFIX}/share/doc/mod_jk
SUBST_VARS=		DOCDIR

post-build:
	strip ${WRKBUILD}/apache-1.3/mod_jk.so.0.0

do-install:
	sed 's,/usr/local,${TRUEPREFIX},' \
		< ${FILESDIR}/mod_jk-enable >${WRKSRC}/mod_jk-enable
	${INSTALL_SCRIPT} ${WRKSRC}/mod_jk-enable ${PREFIX}/sbin/mod_jk-enable
	${INSTALL_DATA} ${WRKBUILD}/apache-1.3/mod_jk.so.0.0 ${PREFIX}/lib/mod_jk.so
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mod_jk
.for file in ${EXAMPLES}
	${INSTALL_DATA} ${FILESDIR}/${file} ${PREFIX}/share/examples/mod_jk
.endfor
	${INSTALL_DATA_DIR} ${DOCDIR}
	sed 's,/usr/local,${TRUEPREFIX},' \
		< ${FILESDIR}/README.OpenBSD >${WRKSRC}/README.OpenBSD
	${INSTALL_DATA} ${WRKSRC}/README.OpenBSD ${DOCDIR}
	${INSTALL_DATA} ${WRKDIR}/${DISTNAME}/LICENSE ${DOCDIR}
	cd ${WRKDIR}/${DISTNAME}/jk/docs && \
	    find . -type d -exec ${INSTALL_DATA_DIR} ${DOCDIR}/{} \; && \
	    find . -type f -exec ${INSTALL_DATA} {} ${DOCDIR}/{} \;

.include "bsd.port.mk"
