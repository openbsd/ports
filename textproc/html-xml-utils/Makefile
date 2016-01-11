# $OpenBSD: Makefile,v 1.3 2016/01/11 09:35:45 ajacoutot Exp $

COMMENT =		simple utilities for manipulating HTML and XML files

DISTNAME =		html-xml-utils-6.7
REVISION =		1

CATEGORIES =		textproc

HOMEPAGE =		http://www.w3.org/Tools/HTML-XML-utils/

MAINTAINER =		Anthony J. Bentley <anthony@anjbe.name>

# W3C license
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c crypto curl idn nghttp2 ssl z

MASTER_SITES =		http://www.w3.org/Tools/HTML-XML-utils/

MODULES =		converters/libiconv
LIB_DEPENDS =		net/curl

CONFIGURE_STYLE =	gnu

post-install:
# W3C license requires a copy of the license to be distributed
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/html-xml-utils
	${INSTALL_DATA} ${WRKSRC}/COPYING ${PREFIX}/share/doc/html-xml-utils

.include <bsd.port.mk>
