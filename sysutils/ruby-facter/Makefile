# $OpenBSD: Makefile,v 1.43 2013/06/30 16:34:53 jasper Exp $

COMMENT=	Ruby library for retrieving facts from operating systems

VERSION=	1.7.1

DISTNAME=	facter-${VERSION}
PKGNAME=	ruby-${DISTNAME}
REVISION=	3
CATEGORIES=	sysutils

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE=	http://puppetlabs.com/puppet/related-projects/facter/
MASTER_SITES=	https://puppetlabs.com/downloads/facter/

# Apache
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/ruby
MODRUBY_REV=	1.9

NO_BUILD=	Yes
PKG_ARCH=	*

TEST_DEPENDS=	devel/ruby-mocha,${MODRUBY_FLAVOR}
BUILD_DEPENDS=	${MODRUBY_BUILD_DEPENDS}
MODRUBY_TEST=	rake rspec2

pre-configure:
	${SUBST_CMD} ${WRKSRC}/lib/facter/util/config.rb \
		${WRKSRC}/spec/unit/util/config_spec.rb

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/${MODRUBY_RELEXAMPLEDIR}-facter
	@cd ${WRKSRC} && ${ALL_FAKE_FLAGS} ${RUBY} install.rb
	${INSTALL_DATA} ${WRKSRC}/etc/facter.conf \
		${PREFIX}/${MODRUBY_RELEXAMPLEDIR}-facter
	cd ${PREFIX}/man/man8 && gunzip facter.8.gz

.include <bsd.port.mk>
