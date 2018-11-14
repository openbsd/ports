# $OpenBSD: Makefile,v 1.1.1.1 2018/11/14 19:10:38 jasper Exp $

COMMENT =	web content scanner

DISTNAME =	dirb222
PKGNAME =	dirb-2.2.2

CATEGORIES =	security www

MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=dirb/}

WANTLIB += c crypto curl nghttp2 ssl z

LIB_DEPENDS =		net/curl

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV +=	LDFLAGS=-L${LOCALBASE}/lib

post-extract:
	chmod -R 755 ${WRKSRC}

post-install:
	# Fix conflict with icu4c
	mv ${PREFIX}/bin/gendict ${PREFIX}/bin/dirb-gendict
	${INSTALL_DATA_DIR} ${PREFIX}/share/dirb/
	cd ${WRKSRC} && pax -rw wordlists ${PREFIX}/share/dirb/

.include <bsd.port.mk>
