# $OpenBSD: Makefile,v 1.30 2010/12/08 21:47:30 jeremy Exp $

COMMENT =	object relation model implementation for ruby

VERSION =	3.0.3
DISTNAME =	activerecord-${VERSION}
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

MODRUBY_REGRESS =	rake
REGRESS_DEPENDS =	databases/ruby-mysql,${MODRUBY_FLAVOR} \
			databases/ruby-sqlite3,${MODRUBY_FLAVOR} \
			databases/ruby-pg,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
