# $OpenBSD: Makefile,v 1.4 2011/05/05 21:25:48 jasper Exp $

COMMENT =		library for decoding mod-like music formats

DISTNAME =		libmodplug-0.8.8.2
REVISION =		0
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
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--disable-silent-rules

.include <bsd.port.mk>
