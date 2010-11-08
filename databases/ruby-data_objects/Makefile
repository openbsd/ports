# $OpenBSD: Makefile,v 1.5 2010/11/08 23:33:27 jeremy Exp $

COMMENT =	unified Ruby API for popular databases

DISTNAME =	data_objects-0.10.2
CATEGORIES =	databases

# MIT
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MODULES =		lang/ruby

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		:${MODRUBY_PKG_PREFIX}-addressable-*:www/ruby-addressable,${FLAVOR} \
			:${MODRUBY_PKG_PREFIX}-extlib-*:devel/ruby-extlib,${FLAVOR}

CONFIGURE_STYLE =	ruby gem

MODRUBY_REGRESS =	rake rspec
RAKE_REGRESS_TARGET=	-R tasks spec
REGRESS_DEPENDS =	:${MODRUBY_PKG_PREFIX}-mocha-*:devel/ruby-mocha,${FLAVOR} \
			:${MODRUBY_PKG_PREFIX}-bacon-*:devel/ruby-bacon,${FLAVOR}

.include <bsd.port.mk>
