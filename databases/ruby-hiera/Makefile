# $OpenBSD: Makefile,v 1.6 2013/03/22 18:18:22 ajacoutot Exp $

COMMENT=		simple pluggable hierarchical database

V=			1.1.2
DISTNAME=		hiera-${V}
PKGNAME=		ruby-hiera-${V}
REVISION=		1

CATEGORIES=		databases

HOMEPAGE=		http://projects.puppetlabs.com/projects/hiera

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# Apachev2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/ruby
MODRUBY_REV=		1.8

MODRUBY_HANDLE_FLAVORS=	No

CONFIGURE_STYLE=	ruby gem

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/ruby-json_pure,${MODRUBY_FLAVOR}

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
