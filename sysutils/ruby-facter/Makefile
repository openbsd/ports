# $OpenBSD: Makefile,v 1.11 2010/10/24 10:45:48 robert Exp $

SHARED_ONLY=	Yes

COMMENT=	Ruby library for retrieving facts from operating systems

VERSION=	1.5.8
DISTNAME=	facter-${VERSION}
PKGNAME=	ruby-${DISTNAME}
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

REGRESS_DEPENDS= ::devel/ruby-mocha

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ruby-facter
	@cd ${WRKSRC} && ${ALL_FAKE_FLAGS} ${RUBY} install.rb
	${INSTALL_DATA} ${WRKSRC}/etc/facter.conf \
			${PREFIX}/share/examples/ruby-facter 

MODRUBY_REGRESS= rake rspec
do-regress:
	@cd ${WRKSRC}/spec && ${RAKE} all


.include <bsd.port.mk>
