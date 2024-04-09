COMMENT =		Puppet server

VERSION =		8.5.0
REVISION =		0
DISTNAME =		puppetserver-${VERSION}

CATEGORIES =		sysutils

HOMEPAGE =		https://puppet.com/docs/puppet/8/server/about_server.html
MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

PERMIT_PACKAGE =	Yes

SITES =			https://downloads.puppetlabs.com/puppet/

MODULES =		java \
			lang/ruby
MODJAVA_VER =		11+

RUN_DEPENDS =		databases/puppetdb/8,-plugin \
			java/javaPathHelper \
			${MODJAVA_RUN_DEPENDS} \
			shells/bash \
			sysutils/ruby-puppet/8 \
			sysutils/ruby-puppetserver-ca,${MODRUBY_FLAVOR}

MODRUBY_ADJ_FILES =	ca
USE_GMAKE =	Yes
MAKE_FLAGS +=	confdir="share/examples/" \
                datadir="share/puppetlabs/" \
                bindir="bin" \
                rubylibdir="${MODRUBY_SITEDIR}" \
                DESTDIR="${PREFIX}/"


NO_BUILD=       Yes
NO_TEST=        Yes

SUBST_VARS +=	MODRUBY_REV MODRUBY_FLAVOR

do-install:
	install -d -m 0755 "${PREFIX}/share/examples/puppetlabs/puppetserver/services.d"
	cp ${WRKSRC}/ext/system-config/services.d/bootstrap.cfg \
		${PREFIX}/share/examples/puppetlabs/puppetserver/services.d/
	${SUBST_CMD} ${WRKSRC}/ext/default ${WRKSRC}/ext/bin/puppetserver ${WRKSRC}/ext/cli/* \
			${WRKSRC}/ext/config/conf.d/puppetserver.conf
	cd ${WRKSRC} && ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} install-puppetserver
	cp ${WRKSRC}/ext/default ${PREFIX}/share/puppetlabs/puppetserver/cli/cli-defaults.sh
	rm -rf ${PREFIX}/var

.include <bsd.port.mk>
