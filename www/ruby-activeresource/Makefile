# $OpenBSD: Makefile,v 1.15 2010/12/08 21:45:30 jeremy Exp $

COMMENT =	wraps web resources in model classes

VERSION =	3.0.3
DISTNAME =	activeresource-${VERSION}
CATEGORIES =	www

# MIT License
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MODULES =	lang/ruby

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	devel/ruby-activesupport,${MODRUBY_FLAVOR}=${VERSION} \
		devel/ruby-activemodel,${MODRUBY_FLAVOR}=${VERSION}

CONFIGURE_STYLE =	ruby gem

MODRUBY_REGRESS =	rake

.include <bsd.port.mk>
