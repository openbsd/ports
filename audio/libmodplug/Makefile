# $OpenBSD: Makefile,v 1.18 2017/11/03 15:04:01 sthen Exp $

COMMENT =		library for decoding mod-like music formats

DISTNAME =		libmodplug-0.8.9.0
CATEGORIES =		audio

HOMEPAGE =		http://modplug-xmms.sourceforge.net/

SHARED_LIBS +=          modplug         1.0     # 1.0

# Public domain
PERMIT_PACKAGE_CDROM = Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=modplug-xmms/}

WANTLIB +=		m ${COMPILER_LIBCXX}

NO_TEST =		Yes

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
