# $OpenBSD: Makefile,v 1.20 2019/07/12 21:02:13 sthen Exp $

COMMENT =		library for decoding mod-like music formats

DISTNAME =		libmodplug-0.8.9.0
CATEGORIES =		audio
REVISION =		0

HOMEPAGE =		http://modplug-xmms.sourceforge.net/

SHARED_LIBS +=          modplug         1.0     # 1.0

# Public domain
PERMIT_PACKAGE = Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=modplug-xmms/}

WANTLIB +=		m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

NO_TEST =		Yes

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
