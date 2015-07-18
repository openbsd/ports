# $OpenBSD: Makefile,v 1.4 2015/07/18 14:33:50 jasper Exp $

SHARED_ONLY =		Yes

COMMENT =		MCP LADSPA plugins

DISTNAME =		MCP-plugins-0.4.0
PKGNAME =		${DISTNAME:L}
REVISION =		0
CATEGORIES =		audio

HOMEPAGE =		http://kokkinizita.net/linuxaudio/ladspa/index.html

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		m stdc++

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
