# $OpenBSD: Makefile,v 1.10 2013/10/11 17:28:17 bcallah Exp $

COMMENT =		library for decoding mod-like music formats

DISTNAME =		libmodplug-0.8.8.4
CATEGORIES =		audio

HOMEPAGE =		http://modplug-xmms.sourceforge.net/

MAINTAINER =		Brian Callahan <bcallah@openbsd.org>

SHARED_LIBS +=          modplug         0.1     # .1.0

# Public domain
PERMIT_PACKAGE_CDROM = Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=modplug-xmms/}

WANTLIB +=		m stdc++

NO_TEST =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
