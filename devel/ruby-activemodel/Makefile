# $OpenBSD: Makefile,v 1.1.1.1 2010/12/08 21:23:23 jeremy Exp $

COMMENT =	toolkit for building modeling frameworks

VERSION =	3.0.3
DISTNAME =	activemodel-${VERSION}
CATEGORIES =	devel

# MIT License
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MODULES =	lang/ruby

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	devel/ruby-i18n,${MODRUBY_FLAVOR}>=0.4,<1.0 \
		textproc/ruby-builder,${MODRUBY_FLAVOR}>=2.1.2,<2.2 \
		devel/ruby-activesupport,${MODRUBY_FLAVOR}=${VERSION}

CONFIGURE_STYLE =	ruby gem

.include <bsd.port.mk>
