# $OpenBSD: Makefile,v 1.3 2013/03/10 22:55:03 espie Exp $

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
	perl -pi -e 's#g\+\+ -shared#${CXX} -shared -fPIC#g' ${WRKSRC}/Makefile

do-install:
	${INSTALL_PROGRAM_DIR} ${PREFIX}/lib/ladspa
	${INSTALL_PROGRAM} ${WRKBUILD}/*.so ${PREFIX}/lib/ladspa

.include <bsd.port.mk>
