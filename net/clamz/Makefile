# $OpenBSD: Makefile,v 1.2 2016/04/11 01:04:10 jturner Exp $

COMMENT =		downloader for the Amazon.com MP3 music store

DISTNAME =		clamz-0.5
CATEGORIES =		net
REVISION =		0

MAINTAINER =		James Turner <james@calminferno.net>

HOMEPAGE =		http://code.google.com/p/clamz/
MASTER_SITES =		https://clamz.googlecode.com/files/

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c curl expat gcrypt gpg-error

LIB_DEPENDS =		net/curl \
			security/libgcrypt

RUN_DEPENDS =		devel/desktop-file-utils \
			misc/shared-mime-info

CONFIGURE_STYLE =	gnu
NO_TEST =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/clamz
	${INSTALL_DATA} ${WRKSRC}/COPYING ${PREFIX}/share/doc/clamz/
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/clamz/

.include <bsd.port.mk>
