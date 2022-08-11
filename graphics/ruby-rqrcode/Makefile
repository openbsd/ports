COMMENT =		library to encode QR Codes

DISTNAME =		rqrcode-2.1.2

CATEGORIES =		graphics

HOMEPAGE =		https://github.com/whomwah/rqrcode

MAINTAINER =		Kurt Mosiejczuk <kmos@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/ruby

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		graphics/ruby-chunky_png,${MODRUBY_FLAVOR} \
			graphics/ruby-rqrcode-core,${MODRUBY_FLAVOR}

CONFIGURE_STYLE =	ruby gem

.include <bsd.port.mk>
