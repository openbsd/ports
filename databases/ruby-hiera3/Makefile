# $OpenBSD: Makefile,v 1.18 2017/10/18 11:18:15 sebastia Exp $

COMMENT=		simple pluggable hierarchical database

V=			3.4.2
DISTNAME=		hiera-${V}
PKGNAME=		hiera3-${V}

CATEGORIES=		databases

HOMEPAGE=		http://projects.puppetlabs.com/projects/hiera

MAINTAINER=		Sebastian Reitenbach <sebastia@openbsd.org>

# Apachev2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/ruby-deep_merge,${MODRUBY_FLAVOR}

TEST_DEPENDS=		devel/ruby-mocha,${MODRUBY_FLAVOR}
MODRUBY_TEST=		rspec3

pre-configure:
	sed -i 's,/var/lib,/var/db,g' \
		${WRKSRC}/lib/hiera/backend.rb \
		${WRKSRC}/lib/hiera/util.rb \
		${WRKSRC}/spec/unit/util_spec.rb \
		${WRKSRC}/README.md

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/${MODRUBY_RELEXAMPLEDIR}-hiera
	${SUBST_CMD} -m 444 -c ${FILESDIR}/hiera.yaml \
		${PREFIX}/${MODRUBY_RELEXAMPLEDIR}-hiera/hiera.yaml

.include <bsd.port.mk>
