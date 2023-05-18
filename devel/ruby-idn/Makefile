COMMENT =	ruby bindings for the libidn library

V =		0.1.5
PKGNAME =	idn-${V}
DISTNAME =	idn-ruby-${V}
CATEGORIES =	devel
HOMEPAGE =	https://github.com/deepfryed/idn-ruby

# Apache 2 License
PERMIT_PACKAGE =	Yes

LIB_DEPENDS =	devel/libidn

MODULES =	lang/ruby

WANTLIB =	idn

CONFIGURE_STYLE = ruby gem ext

# tests require dependencies not in ports

.include <bsd.port.mk>
