# $OpenBSD: Makefile,v 1.6 2010/11/15 00:22:53 espie Exp $

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
RUN_DEPENDS =		www/ruby-addressable,${FLAVOR} \
			devel/ruby-extlib,${FLAVOR}

CONFIGURE_STYLE =	ruby gem

MODRUBY_REGRESS =	rake rspec
RAKE_REGRESS_TARGET=	-R tasks spec
REGRESS_DEPENDS =	devel/ruby-mocha,${FLAVOR} \
			devel/ruby-bacon,${FLAVOR}

.include <bsd.port.mk>
