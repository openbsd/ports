# $OpenBSD: Makefile,v 1.3 2013/03/10 22:55:06 espie Exp $

SHARED_ONLY =		Yes

COMMENT =		TAP LADSPA plugins

DISTNAME =		tap-plugins-0.7.1
REVISION =		0
CATEGORIES =		audio

HOMEPAGE =		http://tap-plugins.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		m

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=tap-plugins/}

MAKE_FLAGS =		CC="${CC}" \
			CFLAGS="-I. ${CFLAGS} -c -fPIC -DPIC" \
			LDFLAGS="-nostartfiles -shared -fPIC -DPIC -lm"

FAKE_FLAGS =		INSTALL_PLUGINS_DIR="${DESTDIR}${PREFIX}/lib/ladspa/" \
			INSTALL_LRDF_DIR="${DESTDIR}${PREFIX}/share/ladspa/rdf/"

NO_TEST =		Yes

.include <bsd.port.mk>
