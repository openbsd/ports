# $OpenBSD: Makefile,v 1.19 2018/10/24 14:27:57 sthen Exp $

COMMENT =	command line implementation of the PAR v2.0 specification

V =		0.7.4
DISTNAME =	par2cmdline-$V
REVISION =	0

MAINTAINER =	Mikolaj Kucharski <mikolaj@kucharski.name>

CATEGORIES =	archivers

HOMEPAGE =	https://github.com/BlackIkeEagle/par2cmdline/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

# uses pledge()
WANTLIB =	c m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =	${HOMEPAGE}releases/download/v$V/

BUILD_DEPENDS =	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS}

CONFIGURE_STYLE =	gnu

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15

post-patch:
	cd ${WRKSRC} && ${AUTOCONF_ENV} aclocal && \
		${AUTOCONF_ENV} automake --add-missing && \
		${AUTOCONF_ENV} autoconf

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/par2cmdline
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/par2cmdline

.include <bsd.port.mk>
