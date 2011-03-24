# $OpenBSD: Makefile,v 1.14 2011/03/24 03:16:46 jeremy Exp $

COMMENT =	DSL for quickly creating web-applications in Ruby

DISTNAME =	sinatra-1.2.1
CATEGORIES =	www

HOMEPAGE =	http://www.sinatrarb.com/

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/ruby-tilt,${MODRUBY_FLAVOR}>=1.2.2,<2.0 \
			www/ruby-rack,${MODRUBY_FLAVOR}>=1.1,<2.0

MODRUBY_REGRESS =	rake

REGRESS_DEPENDS =	textproc/ruby-haml,${MODRUBY_FLAVOR} \
			textproc/ruby-builder,${MODRUBY_FLAVOR} \
			devel/ruby-rack-test,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
