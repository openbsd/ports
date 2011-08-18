# $OpenBSD: Makefile,v 1.6 2011/08/18 17:56:47 jasper Exp $

COMMENT =		library for decoding mod-like music formats

DISTNAME =		libmodplug-0.8.8.2
REVISION =		1
CATEGORIES =		audio

HOMEPAGE =		http://modplug-xmms.sourceforge.net/

SHARED_LIBS +=         modplug         0.0     # .1.0

# Public domain
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP =   Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=modplug-xmms/}

WANTLIB +=		m stdc++

USE_LIBTOOL =		Yes

NO_REGRESS =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
