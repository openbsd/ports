# $OpenBSD: Makefile,v 1.1.1.1 2010/10/23 21:57:04 jakemsr Exp $

SHARED_ONLY =		Yes

COMMENT =		MCP LADSPA plugins
DISTNAME =		MCP-plugins-0.4.0
PKGNAME =		${DISTNAME:L}

CATEGORIES =		audio

HOMEPAGE =		http://kokkinizita.net/linuxaudio/ladspa/index.html

MAINTAINER =		Jacob Meuser <jakemsr@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		m stdc++

EXTRACT_SUFX =		.tar.bz2

MASTER_SITES =		http://kokkinizita.net/linuxaudio/downloads/

MAKE_FLAGS =		CPPFLAGS="${CPPFLAGS} -D_REENTRANT -fPIC"

NO_REGRESS =		Yes

post-patch:
	perl -pi -e 's#g\+\+ -shared#${CXX} -shared -fPIC#g' ${WRKSRC}/Makefile

do-install:
	${INSTALL_PROGRAM_DIR} ${PREFIX}/lib/ladspa
	${INSTALL_PROGRAM} ${WRKBUILD}/*.so ${PREFIX}/lib/ladspa

.include <bsd.port.mk>
