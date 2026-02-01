COMMENT-main =	fast, scalable, and reliable data warehouse for OpenVox
COMMENT-plugin =OpenVoxDB terminus plugin

VERSION =	8.12.1
DISTNAME =	openvoxdb-${VERSION}
PKGNAME-plugin =openvoxdb-termini-${VERSION}
CATEGORIES =	databases

HOMEPAGE =	https://voxpupuli.org/openvox/
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

SITES =		https://s3.osuosl.org/openvox-artifacts/openvoxdb/${VERSION}/

# Apachev2
PERMIT_PACKAGE =Yes

MODULES =	java \
		lang/ruby
MODJAVA_VER =	17

MULTI_PACKAGES =-main -plugin

BUILD_DEPENDS = sysutils/coreutils
RUN_DEPENDS-plugin =	sysutils/ruby-openvox/8

RUN_DEPENDS-main =${MODJAVA_RUN_DEPENDS} \
		java/javaPathHelper \
		shells/bash

FAKE_FLAGS +=	confdir="share/examples/" \
		datadir="share/puppetlabs" \
		bindir="bin" \
		rubylibdir="share/puppetlabs/puppet" \
		DESTDIR="${PREFIX}/"

NO_BUILD =	Yes
NO_TEST =	Yes

WRKDIST =	${WRKDIR}/puppetdb-${VERSION}
WRKSRC =	${WRKDIR}/puppetdb-${VERSION}

post-extract:
	cp ${FILESDIR}/Makefile ${WRKSRC}/

post-patch:
	${SUBST_CMD} ${WRKSRC}/ext/bin/puppetdb \
		${WRKSRC}/ext/cli/ssl-setup \
		${WRKSRC}/ext/default \
		${WRKSRC}/ext/config/conf.d/*.ini
	sed -i 's,/bin/bash,/usr/bin/env bash,g;' \
		${WRKSRC}/ext/bin/puppetdb \
		${WRKSRC}/ext/cli/*

do-install:
	cd ${WRKSRC} && ${MAKE_ENV} ${MAKE_PROGRAM} ${FAKE_FLAGS} \
		install-puppetdb install-puppetdb-termini
	${INSTALL_SCRIPT} ${WRKSRC}/ext/default \
		${PREFIX}/share/puppetlabs/puppetdb/cli/cli-defaults.sh

.include <bsd.port.mk>
