# $OpenBSD: Makefile,v 1.16 2011/01/06 04:24:24 jeremy Exp $

COMMENT =	wraps web resources in model classes

VERSION =	3.0.3
DISTNAME =	activeresource-${VERSION}
REVISION =	0
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
