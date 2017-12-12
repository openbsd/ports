# $OpenBSD: Makefile,v 1.17 2017/12/12 01:10:50 jca Exp $

COMMENT =	command line implementation of the PAR v2.0 specification

V =		0.7.4
DISTNAME =	par2cmdline-$V

CATEGORIES =	archivers

HOMEPAGE =	https://github.com/BlackIkeEagle/par2cmdline/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

# uses pledge()
WANTLIB =	c m ${COMPILER_LIBCXX}

MAINTAINER =	Mikolaj Kucharski <mikolaj@kucharski.name>

MASTER_SITES =	${HOMEPAGE}releases/download/v$V/

BUILD_DEPENDS =	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS}

CONFIGURE_STYLE =	gnu

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15

MAKE_ENV = 		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
			AUTOMAKE_VERSION=${AUTOMAKE_VERSION}

post-patch:
	cd ${WRKSRC}; \
	    export AUTOCONF_VERSION=${AUTOCONF_VERSION}; \
	    export AUTOMAKE_VERSION=${AUTOMAKE_VERSION}; \
	    aclocal; automake --add-missing; autoconf

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/par2cmdline
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/par2cmdline

.include <bsd.port.mk>
