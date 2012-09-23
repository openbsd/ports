# $OpenBSD: Makefile,v 1.37 2012/09/23 16:57:32 jeremy Exp $

COMMENT =	object relation model implementation for ruby

VERSION =	3.1.3
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
		devel/ruby-tzinfo,${MODRUBY_FLAVOR}>=0.3.29,<0.4 \
		databases/ruby-arel,${MODRUBY_FLAVOR}>=2.2.1,<2.3

CONFIGURE_STYLE =	ruby gem

.include <bsd.port.mk>
