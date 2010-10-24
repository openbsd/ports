# $OpenBSD: Makefile,v 1.1.1.1 2010/10/24 10:12:15 jakemsr Exp $

SHARED_ONLY =		Yes

COMMENT =		TAP LADSPA plugins
DISTNAME =		tap-plugins-0.7.1

CATEGORIES =		audio

HOMEPAGE =		http://tap-plugins.sourceforge.net/

MAINTAINER =		Jacob Meuser <jakemsr@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		m

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=tap-plugins/}

MAKE_FLAGS =		CC="${CC}" \
			CFLAGS="-I. ${CFLAGS} -c -fPIC -DPIC" \
			LDFLAGS="-nostartfiles -shared -fPIC -DPIC -lm"

FAKE_FLAGS =		INSTALL_PLUGINS_DIR="${DESTDIR}${PREFIX}/lib/ladspa/" \
			INSTALL_LRDF_DIR="${DESTDIR}${PREFIX}/share/ladspa/rdf/"

NO_REGRESS =		Yes

.include <bsd.port.mk>
