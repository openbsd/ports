# $OpenBSD: Makefile,v 1.1.1.1 2018/07/05 19:17:20 feinerer Exp $

COMMENT =		tools to compute hashes recursively

GH_ACCOUNT =		jessek
GH_PROJECT =		hashdeep
GH_TAGNAME =		v4.4

CATEGORIES =		security

MAINTAINER =		Ingo Feinerer <feinerer@logic.at>

# Public domain, and the code for Tiger is GPLv2.
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} c m

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15

NO_TEST =		Yes

pre-configure:
	cd ${WRKSRC} && \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		autoreconf -i

.include <bsd.port.mk>
