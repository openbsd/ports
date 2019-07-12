# $OpenBSD: Makefile,v 1.6 2019/07/12 20:43:41 sthen Exp $

COMMENT =		TAP LADSPA plugins

DISTNAME =		tap-plugins-0.7.3
CATEGORIES =		audio

HOMEPAGE =		http://tap-plugins.sourceforge.net/

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB =		m

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=tap-plugins/}

USE_GMAKE =		Yes

MAKE_FLAGS =		CC="${CC}" \
			CFLAGS="-I. ${CFLAGS} -c -fPIC -DPIC" \
			LDFLAGS="-nostartfiles -shared -fPIC -DPIC -lm"

FAKE_FLAGS =		INSTALL_PLUGINS_DIR="${DESTDIR}${PREFIX}/lib/ladspa/" \
			INSTALL_LRDF_DIR="${DESTDIR}${PREFIX}/share/ladspa/rdf/"

NO_TEST =		Yes

.include <bsd.port.mk>
