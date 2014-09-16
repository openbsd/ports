# $OpenBSD: Makefile,v 1.65 2014/09/16 09:07:03 espie Exp $

COMMENT=	Ruby library for retrieving facts from operating systems
FAKE_AS_ROOT =	Yes

VERSION=	2.2.0
DISTNAME=	facter-${VERSION}
REVISION=	1
CATEGORIES=	sysutils

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE=	http://puppetlabs.com/puppet/related-projects/facter/
MASTER_SITES=	https://downloads.puppetlabs.com/facter/

# Apache
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/ruby
MODRUBY_REV=	2.0

NO_BUILD=	Yes
BUILD_DEPENDS=	lang/ruby/${MODRUBY_REV}
PKG_ARCH=	*

#TEST_DEPENDS=	devel/ruby-mocha,${MODRUBY_FLAVOR}
#BUILD_DEPENDS=	${MODRUBY_BUILD_DEPENDS}
#MODRUBY_TEST=	rake rspec2

pre-configure:
	${SUBST_CMD} ${WRKSRC}/lib/facter/util/config.rb \
		${WRKSRC}/spec/unit/util/config_spec.rb

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/${MODRUBY_RELEXAMPLEDIR}-facter
	@cd ${WRKSRC} && \
		${ALL_FAKE_FLAGS} ${RUBY} install.rb --destdir=${WRKINST}
	${INSTALL_DATA} ${WRKSRC}/etc/facter.conf \
		${PREFIX}/${MODRUBY_RELEXAMPLEDIR}-facter
	cd ${PREFIX}/man/man8 && gunzip facter.8.gz

.include <bsd.port.mk>
