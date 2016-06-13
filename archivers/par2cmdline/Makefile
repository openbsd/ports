# $OpenBSD: Makefile,v 1.12 2016/06/13 17:32:27 semarie Exp $

COMMENT =	command line implementation of the PAR v2.0 specification

V =		0.6.14
DISTNAME =	par2cmdline-$V
DISTFILES =	${DISTNAME}{v$V}.tar.gz
REVISION =	0

CATEGORIES =	archivers

HOMEPAGE =	https://github.com/BlackIkeEagle/par2cmdline/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

# uses pledge()
WANTLIB =	c m stdc++

MAINTAINER =	Mikolaj Kucharski <mikolaj@kucharski.name>

MASTER_SITES =	${HOMEPAGE}archive/

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

pre-test:
	sed -i -e 's,^tar -xf,tar -xzf,' ${WRKSRC}/tests/test*

.include <bsd.port.mk>
