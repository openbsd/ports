# $OpenBSD: Makefile,v 1.20 2014/06/20 19:39:01 jasper Exp $

COMMENT=		simple pluggable hierarchical database

V=			1.3.4
DISTNAME=		hiera-${V}
REVISION=		0

CATEGORIES=		databases

HOMEPAGE=		http://projects.puppetlabs.com/projects/hiera

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Apachev2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/ruby-deep_merge,${MODRUBY_FLAVOR} \
			devel/ruby-json_pure,${MODRUBY_FLAVOR}

TEST_DEPENDS=		devel/ruby-mocha,${MODRUBY_FLAVOR}
MODRUBY_TEST=		rspec2

pre-configure:
	perl -pi -e 's,/var/lib,/var/db,g' \
		${WRKSRC}/lib/hiera/backend.rb \
		${WRKSRC}/lib/hiera/util.rb \
		${WRKSRC}/spec/unit/util_spec.rb \
		${WRKSRC}/README.md

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/${MODRUBY_RELEXAMPLEDIR}-hiera
	${INSTALL_DATA} ${FILESDIR}/hiera.yaml \
		${PREFIX}/${MODRUBY_RELEXAMPLEDIR}-hiera

.include <bsd.port.mk>
