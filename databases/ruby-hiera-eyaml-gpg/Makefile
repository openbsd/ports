# $OpenBSD: Makefile,v 1.4 2019/10/22 13:54:39 sebastia Exp $

COMMENT =	gpg encryptor for the hiera eyaml backend

DISTNAME =	hiera-eyaml-gpg-0.7.4
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
