# $OpenBSD: Makefile,v 1.11 2019/07/12 20:43:36 sthen Exp $

COMMENT =		MCP LADSPA plugins

DISTNAME =		MCP-plugins-0.4.0
PKGNAME =		${DISTNAME:L}
REVISION =		3
CATEGORIES =		audio

HOMEPAGE =		http://kokkinizita.net/linuxaudio/ladspa/index.html

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB =		m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

EXTRACT_SUFX =		.tar.bz2

MASTER_SITES =		http://kokkinizita.net/linuxaudio/downloads/

MAKE_FLAGS =		CPPFLAGS="${CPPFLAGS} -D_REENTRANT -fPIC"

NO_TEST =		Yes

post-patch:
	sed -i 's#g\+\+ -shared#${CXX} -shared -fPIC#g' ${WRKSRC}/Makefile

do-install:
	${INSTALL_PROGRAM_DIR} ${PREFIX}/lib/ladspa
	${INSTALL_PROGRAM} ${WRKBUILD}/*.so ${PREFIX}/lib/ladspa

.include <bsd.port.mk>
