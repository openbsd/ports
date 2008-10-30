# $Id $

COMMENT =	library for verifying and serving OpenID identities

DISTNAME = ruby-yadis-0.3.4
CATEGORIES = security

MAINTAINER =	Paul Irofti <pirofti@openbsd.org>

# Apache License
PERMIT_PACKAGE_CDROM =   Yes
PERMIT_PACKAGE_FTP =     Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =   Yes

MASTER_SITES =   ${MASTER_SITE_RUBYFORGE:=yadis/}

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem

PKG_ARCH =	*

do-regress:
	@cd ${WRKBUILD}/test && ${RUBY} -I${WRKBUILD}/lib runtests.rb

.include <bsd.port.mk>
