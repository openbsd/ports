# $OpenBSD: Makefile,v 1.4 2016/01/29 11:23:27 bentley Exp $

COMMENT =		simple utilities for manipulating HTML and XML files

DISTNAME =		html-xml-utils-6.9

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

.include <bsd.port.mk>
