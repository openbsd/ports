# $OpenBSD: Makefile,v 1.13 2014/03/31 08:43:22 jasper Exp $

COMMENT-main=	fast, scalable, and reliable data warehouse for Puppet
COMMENT-plugin= PuppetDB terminus plugin

V=		1.6.3
DISTNAME=	puppetdb-$V
PKGNAME-main=	${DISTNAME}
PKGNAME-plugin= puppetdb-terminus-$V
CATEGORIES=	databases

HOMEPAGE=	http://docs.puppetlabs.com/puppetdb/latest/

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

MASTER_SITES=	http://downloads.puppetlabs.com/puppetdb/

# Apache
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	java \
		lang/ruby
MODRUBY_REV=	1.9
MODJAVA_VER=	1.7+

MULTI_PACKAGES= -main -plugin

RUN_DEPENDS-plugin=sysutils/ruby-puppet/3

RUN_DEPENDS-main=${BASE_PKGPATH},-plugin \
		${MODJAVA_RUN_DEPENDS} \
		java/javaPathHelper \
		shells/bash

NO_BUILD=	Yes
NO_TEST=	Yes

SCRIPTS=	anonymize export foreground import ssl-setup

do-configure:
	${SUBST_CMD} ${WRKSRC}/Rakefile \
			${WRKSRC}/tasks/install.rake \
			${WRKSRC}/ext/files/config.ini
.for s in ${SCRIPTS}
	${SUBST_CMD} ${WRKSRC}/ext/files/puppetdb-$s
.endfor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/{,examples/}puppetdb
	${INSTALL_DATA_DIR} ${PREFIX}/libexec/puppetdb/
.for s in ${SCRIPTS}
	${INSTALL_SCRIPT} ${WRKSRC}/ext/files/puppetdb-$s ${PREFIX}/libexec/puppetdb/
.endfor
.for c in config.ini database.ini jetty.ini repl.ini
	cat ${WRKSRC}/ext/files/$c >> ${PREFIX}/share/examples/puppetdb/puppetdb.conf
.endfor
	${INSTALL_DATA} ${WRKSRC}/ext/files/log4j.properties \
		${PREFIX}/share/examples/puppetdb/
	${INSTALL_DATA} ${WRKSRC}/puppetdb.jar ${PREFIX}/share/puppetdb/
	cd ${PREFIX}/share/puppetdb/ && ln -sf /var/db/puppetdb/db db
	cd ${PREFIX}/share/puppetdb/ && ln -sf /var/db/puppetdb/mq mq
	cd ${PREFIX}/share/puppetdb/ && ln -sf /var/db/puppetdb/state state
	${INSTALL_DATA_DIR} ${PREFIX}/${MODRUBY_SITEDIR}
	cd ${WRKSRC}/ext/master/lib/ && pax -rw . ${PREFIX}/${MODRUBY_SITEDIR}

.include <bsd.port.mk>
