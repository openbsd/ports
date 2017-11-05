# $OpenBSD: Makefile,v 1.1.1.1 2017/11/05 21:59:07 sebastia Exp $

COMMENT =	gpg encryptor for the hiera eyaml backend

DISTNAME =	hiera-eyaml-gpg-0.6
CATEGORIES =	databases

HOMEPAGE =	http://github.com/sihil/hiera-eyaml-gpg
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		databases/ruby-hiera-eyaml,${MODRUBY_FLAVOR} \
			security/ruby-gpgme,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
