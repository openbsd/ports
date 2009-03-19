# $OpenBSD: Makefile,v 1.1.1.1 2009/03/19 22:39:46 bernd Exp $

COMMENT =	simple REST client for Ruby

DISTNAME =	rest-client-0.9.2
PKGNAME =	ruby-${DISTNAME}
CATEGORIES =	www

HOMEPAGE =	http://rest-client.heroku.com/

# MIT
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MASTER_SITES =		${MASTER_SITE_RUBYFORGE:=rest-client/}

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

PKG_ARCH =		*

REGRESS_DEPENDS =	::devel/ruby-rake \
			::devel/ruby-rspec

do-regress:
	@cd ${WRKBUILD} && ${LOCALBASE}/bin/rake test spec

.include <bsd.port.mk>
