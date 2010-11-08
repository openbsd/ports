# $OpenBSD: Makefile,v 1.8 2010/11/08 23:28:55 jeremy Exp $

COMMENT =	ruby library for handling credit card processor merchants

DISTNAME =	activemerchant-1.4.2
REVISION =      1
CATEGORIES =	www

HOMEPAGE =	http://www.activemerchant.org/

# mit
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MODULES =	lang/ruby

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	:${MODRUBY_PKG_PREFIX}-activesupport-*:devel/ruby-activesupport,${FLAVOR} \
		:${MODRUBY_PKG_PREFIX}-builder-*:textproc/ruby-builder,${FLAVOR}

CONFIGURE_STYLE =	ruby gem

MODRUBY_REGRESS =	rake

.include <bsd.port.mk>
