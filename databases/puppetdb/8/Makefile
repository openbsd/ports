COMMENT-main=	fast, scalable, and reliable data warehouse for Puppet
COMMENT-plugin= PuppetDB terminus plugin

V=		8.5.1
DISTNAME=	puppetdb-$V
PKGNAME-plugin= puppetdb-termini-$V
CATEGORIES=	databases

HOMEPAGE=	https://puppet.com/docs/puppetdb/

MAINTAINER=	Sebastian Reitenbach <sebastia@openbsd.org>

SITES=		https://downloads.puppetlabs.com/puppetdb/

# Apachev2
PERMIT_PACKAGE=	Yes

MODULES=	java \
		lang/ruby
MODJAVA_VER=	11+

MULTI_PACKAGES= -main -plugin

BUILD_DEPENDS = sysutils/coreutils
RUN_DEPENDS-plugin=sysutils/ruby-puppet/8>=8.0.0,<9.0.0v0

RUN_DEPENDS-main=${MODJAVA_RUN_DEPENDS} \
		java/javaPathHelper \
		shells/bash

MAKE_FLAGS +=	confdir="share/examples/" \
		datadir="share/puppetlabs" \
		bindir="bin" \
		rubylibdir="share/puppetlabs/puppet" \
		DESTDIR="${PREFIX}/"

NO_BUILD=	Yes
NO_TEST=	Yes

do-configure:
	${SUBST_CMD} ${WRKSRC}/ext/bin/puppetdb \
		${WRKSRC}/ext/cli/ssl-setup \
		${WRKSRC}/ext/default \
		${WRKSRC}/ext/config/conf.d/*.ini
	sed -i 's,/bin/bash,${LOCALBASE}/bin/bash,g;' \
		${WRKSRC}/ext/bin/puppetdb \
		${WRKSRC}/ext/cli/*

do-install:
	cd ${WRKSRC} && ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} \
		install-puppetdb install-puppetdb-termini
	${INSTALL_SCRIPT} ${WRKSRC}/ext/default \
		${PREFIX}/share/puppetlabs/puppetdb/cli/cli-defaults.sh

.include <bsd.port.mk>
