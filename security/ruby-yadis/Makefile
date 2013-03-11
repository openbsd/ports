# $OpenBSD: Makefile,v 1.11 2013/03/11 11:41:28 espie Exp $

COMMENT =	library for verifying and serving OpenID identities

DISTNAME = ruby-${PKGNAME}
PKGNAME = yadis-0.3.4
REVISION = 6
CATEGORIES = security

# Apache License
PERMIT_PACKAGE_CDROM =   Yes

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem

do-test:
	@cd ${WRKBUILD}/test && ${RUBY} -I${WRKBUILD}/lib runtests.rb

.include <bsd.port.mk>
