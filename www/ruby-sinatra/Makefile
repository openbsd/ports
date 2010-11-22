# $OpenBSD: Makefile,v 1.10 2010/11/22 08:36:54 espie Exp $

COMMENT =	DSL for quickly creating web-applications in Ruby

DISTNAME =	sinatra-1.0
REVISION =	0
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
RUN_DEPENDS =		devel/ruby-tilt,${FLAVOR} \
			www/ruby-rack,${FLAVOR}>=1.0.0

MODRUBY_REGRESS =	rake

REGRESS_DEPENDS =	textproc/ruby-haml,${FLAVOR} \
			textproc/ruby-builder,${FLAVOR} \
			devel/ruby-rack-test,${FLAVOR}

.include <bsd.port.mk>
