# $OpenBSD: Makefile,v 1.33 2013/03/25 07:57:00 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	Ruby library for retrieving facts from operating systems

VERSION=	1.6.18

DISTNAME=	facter-${VERSION}
PKGNAME=	ruby-${DISTNAME}
CATEGORIES=	sysutils

MAINTAINER=	Robert Nagy <robert@openbsd.org>

HOMEPAGE=	http://projects.puppetlabs.com/projects/facter
MASTER_SITES=	https://puppetlabs.com/downloads/facter/

# Apache
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/ruby
MODRUBY_REV=	1.8

NO_BUILD=	Yes
PKG_ARCH=	*

TEST_DEPENDS=devel/ruby-mocha,${MODRUBY_FLAVOR}
BUILD_DEPENDS=	${MODRUBY_BUILD_DEPENDS}
MODRUBY_TEST=rake rspec2

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/${MODRUBY_RELEXAMPLEDIR}-facter
	@cd ${WRKSRC} && ${ALL_FAKE_FLAGS} ${RUBY} install.rb
	${INSTALL_DATA} ${WRKSRC}/etc/facter.conf \
		${PREFIX}/${MODRUBY_RELEXAMPLEDIR}-facter
	cd ${PREFIX}/man/man8 && gunzip facter.8.gz

.include <bsd.port.mk>
