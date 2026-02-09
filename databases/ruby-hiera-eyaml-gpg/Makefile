COMMENT =	gpg encryptor for the hiera eyaml backend

REVISION =	0
DISTNAME =	hiera-eyaml-gpg-0.7.4
CATEGORIES =	databases

HOMEPAGE =	http://github.com/sihil/hiera-eyaml-gpg
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/ruby
MODRUBY_HANDLE_FLAVORS =No
GEM_FLAGS =		--no-format-executable

CONFIGURE_STYLE =	ruby gem

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		databases/ruby-hiera-eyaml \
			security/ruby-gpgme,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
