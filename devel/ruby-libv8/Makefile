# $OpenBSD: Makefile,v 1.2 2017/11/04 17:46:41 jeremy Exp $

COMMENT =	access the v8 javascript interpreter from ruby

DISTNAME =	libv8-3.16.14.18
REVISION =	0
CATEGORIES =	devel lang

HOMEPAGE =	https://github.com/cowboyd/libv8

# MIT License
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/ruby

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	lang/libv8

CONFIGURE_STYLE = ruby gem ext
CONFIGURE_ARGS = --with-system-v8

post-install:
	rm -r ${PREFIX}/${GEM_LIB}/gems/${DISTNAME}/vendor/

.include <bsd.port.mk>
