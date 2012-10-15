# $OpenBSD: Makefile,v 1.29 2012/10/15 15:06:42 sthen Exp $

COMMENT =	utility classes and extensions for rails framework

DISTNAME =	activesupport-3.1.3
REVISION =	0
CATEGORIES =	devel

# MIT License
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MODULES =	lang/ruby

BUILD_DEPENDS = converters/ruby-multi_json,${MODRUBY_FLAVOR}>=1.0,<2.0
RUN_DEPENDS =	${MODRUBY_ICONV_DEPENDS} \
		converters/ruby-multi_json,${MODRUBY_FLAVOR}>=1.0,<2.0

CONFIGURE_STYLE =	ruby gem

.include <bsd.port.mk>
