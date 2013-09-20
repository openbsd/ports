# $OpenBSD: Makefile,v 1.2 2013/09/20 14:40:09 bcallah Exp $

V =		0.16
COMMENT =	code searching tool, with a focus on speed (ag)

DISTNAME =	the_silver_searcher-${V}
DISTFILES =	the_silver_searcher-${V}.tar.gz{${V}.tar.gz}
REVISION =	0
CATEGORIES =	textproc

HOMEPAGE =	https://github.com/ggreer/the_silver_searcher
MAINTAINER =	Florian Stinglmayr <fstinglmayr@gmail.com>

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c lzma pcre pthread z

MASTER_SITES =	https://github.com/ggreer/the_silver_searcher/archive/

BUILD_DEPENDS =	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS}

LIB_DEPENDS =	archivers/xz \
		devel/pcre

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include"

NO_TEST =	YES

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.11

pre-configure:
	cd ${WRKSRC} && \
		${SETENV} AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
			AUTOCONF_VERSION=${AUTOCONF_VERSION} autoreconf -i

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ag ${PREFIX}/bin/ag
	${INSTALL_MAN} ${WRKSRC}/doc/ag.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/bash-completion/completions
	${INSTALL_DATA} ${WRKSRC}/ag.bashcomp.sh ${PREFIX}/share/bash-completion/completions/ag

.include <bsd.port.mk>
