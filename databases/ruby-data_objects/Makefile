# $OpenBSD: Makefile,v 1.8 2011/01/06 04:24:22 jeremy Exp $

COMMENT =	unified Ruby API for popular databases

DISTNAME =	data_objects-0.10.2
REVISION =	1
CATEGORIES =	databases

# MIT
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MODULES =		lang/ruby

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		www/ruby-addressable,${MODRUBY_FLAVOR} \
			devel/ruby-extlib,${MODRUBY_FLAVOR}

CONFIGURE_STYLE =	ruby gem

MODRUBY_REGRESS =	rake rspec
RAKE_REGRESS_TARGET=	-R tasks spec
REGRESS_DEPENDS =	devel/ruby-mocha,${MODRUBY_FLAVOR} \
			devel/ruby-bacon,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
