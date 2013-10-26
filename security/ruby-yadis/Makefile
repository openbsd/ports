# $OpenBSD: Makefile,v 1.12 2013/10/26 23:55:37 jeremy Exp $

COMMENT =	library for verifying and serving OpenID identities

DISTNAME = ruby-${PKGNAME}
PKGNAME = yadis-0.3.4
REVISION = 7
CATEGORIES = security

# Apache License
PERMIT_PACKAGE_CDROM =   Yes

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem

do-test:
	@cd ${WRKBUILD}/test && ${RUBY} -I${WRKBUILD}/lib runtests.rb

.include <bsd.port.mk>
