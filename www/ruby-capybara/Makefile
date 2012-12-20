# $OpenBSD: Makefile,v 1.1.1.1 2012/12/20 16:21:24 jeremy Exp $

COMMENT =	integration testing tool for rack based web applications

DISTNAME =	capybara-1.1.2
CATEGORIES =	www

HOMEPAGE=	https://github.com/jnicklas/capybara

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =	lang/ruby
CONFIGURE_STYLE = ruby gem

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	mail/ruby-mime-types,${MODRUBY_FLAVOR}>=1.16 \
		textproc/ruby-nokogiri,${MODRUBY_FLAVOR}>=1.3.3 \
		www/ruby-rack,${MODRUBY_FLAVOR}>=1.0.0 \
		www/ruby-rack-test,${MODRUBY_FLAVOR}>=0.5.4 \
		www/ruby-xpath,${MODRUBY_FLAVOR}>=0.1.4,<2.0

.include <bsd.port.mk>
