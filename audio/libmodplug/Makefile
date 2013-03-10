# $OpenBSD: Makefile,v 1.7 2013/03/10 22:55:03 espie Exp $

COMMENT =		library for decoding mod-like music formats

DISTNAME =		libmodplug-0.8.8.2
REVISION =		1
CATEGORIES =		audio

HOMEPAGE =		http://modplug-xmms.sourceforge.net/

SHARED_LIBS +=         modplug         0.0     # .1.0

# Public domain
PERMIT_DISTFILES_CDROM = Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=modplug-xmms/}

WANTLIB +=		m stdc++

USE_LIBTOOL =		Yes

NO_TEST =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
