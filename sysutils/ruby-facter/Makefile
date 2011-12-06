# $OpenBSD: Makefile,v 1.21 2011/12/06 14:39:01 robert Exp $

SHARED_ONLY=	Yes

COMMENT=	Ruby library for retrieving facts from operating systems

VERSION=	1.6.0
DISTNAME=	facter-${VERSION}
PKGNAME=	ruby-${DISTNAME}
REVISION=	1
CATEGORIES=	sysutils

HOMEPAGE=	http://reductivelabs.com/projects/facter/
MASTER_SITES=	http://reductivelabs.com/downloads/facter/

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# GPL license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/ruby

NO_BUILD=	Yes

REGRESS_DEPENDS= devel/ruby-mocha
BUILD_DEPENDS +=	${MODRUBY_BUILD_DEPENDS}

do-install:
	${INSTALL_DATA_DIR} ${MODRUBY_EXAMPLEDIR}/facter
	@cd ${WRKSRC} && ${ALL_FAKE_FLAGS} ${RUBY} install.rb
	${INSTALL_DATA} ${WRKSRC}/etc/facter.conf \
			${MODRUBY_EXAMPLEDIR}/facter 

MODRUBY_REGRESS = rake rspec2


.include <bsd.port.mk>
