# $OpenBSD: Makefile,v 1.24 2020/05/27 21:08:00 sebastia Exp $

COMMENT-main=	fast, scalable, and reliable data warehouse for Puppet
COMMENT-plugin= PuppetDB terminus plugin

V=		5.2.15
DISTNAME=	puppetdb-$V
PKGNAME-main=	${DISTNAME}
PKGNAME-plugin= puppetdb-termini-$V
CATEGORIES=	databases

HOMEPAGE=	https://puppet.com/docs/puppetdb/

MAINTAINER=	Sebastian Reitenbach <sebastia@openbsd.org>

MASTER_SITES=	http://downloads.puppetlabs.com/puppetdb/

# Apachev2
PERMIT_PACKAGE=	Yes

MODULES=	java \
		lang/ruby
MODJAVA_VER=	1.8+

MULTI_PACKAGES= -main -plugin

BUILD_DEPENDS =	sysutils/coreutils
RUN_DEPENDS-plugin=sysutils/ruby-puppet/5>=5.0.0,<4.0.0v0

RUN_DEPENDS-main=${BASE_PKGPATH},-plugin=${V} \
		${MODJAVA_RUN_DEPENDS} \
		java/javaPathHelper \
		shells/bash

MAKE_FLAGS +=	confdir="share/examples/puppetdb/" \
		datadir="share" \
		bindir="bin" \
		rubylibdir="${MODRUBY_SITEDIR}" \
		DESTDIR="${PREFIX}/"

NO_BUILD=	Yes
NO_TEST=	Yes

do-configure:
	${SUBST_CMD} ${WRKSRC}/ext/bin/puppetdb \
		${WRKSRC}/ext/cli/ssl-setup \
		${WRKSRC}/ext/config/conf.d/*.ini
	sed -i 's,/bin/bash,${LOCALBASE}/bin/bash,g;' \
		${WRKSRC}/ext/bin/puppetdb \
		${WRKSRC}/ext/cli/*

do-install:
	cd ${WRKSRC} && ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} \
		install-puppetdb install-puppetdb-termini
	rm ${PREFIX}/share/puppetdb/ezbake*

.include <bsd.port.mk>
