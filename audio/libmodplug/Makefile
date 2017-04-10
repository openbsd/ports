# $OpenBSD: Makefile,v 1.14 2017/04/10 11:45:23 sthen Exp $

COMMENT =		library for decoding mod-like music formats

DISTNAME =		libmodplug-0.8.8.5
CATEGORIES =		audio
REVISION =		0

HOMEPAGE =		http://modplug-xmms.sourceforge.net/

SHARED_LIBS +=          modplug         0.1     # .1.0

# Public domain
PERMIT_PACKAGE_CDROM = Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=modplug-xmms/}

WANTLIB +=		m ${LIBCXX}

NO_TEST =		Yes

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
