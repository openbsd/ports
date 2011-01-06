# $OpenBSD: Makefile,v 1.32 2011/01/06 04:24:22 jeremy Exp $

COMMENT =	object relation model implementation for ruby

VERSION =	3.0.3
DISTNAME =	activerecord-${VERSION}
REVISION =	0
CATEGORIES =	databases

# MIT License
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MODULES =	lang/ruby

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS = 	devel/ruby-activesupport,${MODRUBY_FLAVOR}=${VERSION} \
		devel/ruby-activemodel,${MODRUBY_FLAVOR}=${VERSION} \
		devel/ruby-tzinfo,${MODRUBY_FLAVOR}>=0.3.23,<0.4 \
		databases/ruby-arel,${MODRUBY_FLAVOR}>=2.0.2,<2.1

CONFIGURE_STYLE =	ruby gem

# Upstream doesn't ship the Rakefile or test files in the gem
NO_REGRESS =	Yes

.include <bsd.port.mk>
