# $OpenBSD: Makefile,v 1.3 2019/07/12 20:44:01 sthen Exp $

COMMENT =	gpg encryptor for the hiera eyaml backend

DISTNAME =	hiera-eyaml-gpg-0.7.3
CATEGORIES =	databases

HOMEPAGE =	http://github.com/sihil/hiera-eyaml-gpg
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		databases/ruby-hiera-eyaml,${MODRUBY_FLAVOR} \
			security/ruby-gpgme,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
