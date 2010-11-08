# $OpenBSD: Makefile,v 1.12 2010/11/08 23:28:55 jeremy Exp $

COMMENT =	wraps web resources in model classes

DISTNAME =	activeresource-2.3.4
REVISION =      1
CATEGORIES =	www

# MIT License
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MODULES =	lang/ruby

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	:${MODRUBY_PKG_PREFIX}-activesupport->=2.3.4:devel/ruby-activesupport,${FLAVOR}

CONFIGURE_STYLE =	ruby gem

MODRUBY_REGRESS =	rake

.include <bsd.port.mk>
