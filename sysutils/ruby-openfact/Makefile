COMMENT =		system inventory tool
DISTNAME =		openfact-5.1.0
REVISION =		1
CATEGORIES =		sysutils

HOMEPAGE =		https://github.com/OpenVoxProject/openfact/

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/ruby

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/ruby-ffi,${MODRUBY_FLAVOR}>=1.15.5 \
			devel/ruby-hocon,${MODRUBY_FLAVOR}>=1.3 \
			devel/ruby-thor,${MODRUBY_FLAVOR}>=1.0.1

CONFIGURE_STYLE =	ruby gem

post-install:
	mv ${PREFIX}/${GEM_BIN}/facter{${GEM_BIN_SUFFIX},}

.include <bsd.port.mk>
