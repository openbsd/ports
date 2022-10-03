COMMENT =		Ruby binding for libsodium/NaCl

DISTNAME =		rbnacl-7.1.1

CATEGORIES =		security

HOMEPAGE =		https://github.com/RubyCrypto/rbnacl

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/ruby

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/ruby-ffi,${MODRUBY_FLAVOR} \
			security/libsodium

CONFIGURE_STYLE =	ruby gem

.include <bsd.port.mk>
