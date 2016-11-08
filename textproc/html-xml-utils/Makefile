# $OpenBSD: Makefile,v 1.8 2016/11/08 14:38:55 sthen Exp $

COMMENT =		simple utilities for manipulating HTML and XML files

DISTNAME =		html-xml-utils-7.0
REVISION =		1

CATEGORIES =		textproc

HOMEPAGE =		http://www.w3.org/Tools/HTML-XML-utils/

MAINTAINER =		Anthony J. Bentley <anthony@anjbe.name>

# W3C license
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c crypto curl iconv idn nghttp2 ssl z

MASTER_SITES =		http://www.w3.org/Tools/HTML-XML-utils/

LIB_DEPENDS =		converters/libiconv \
			devel/libidn \
			net/curl

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--with-libidn=${LOCALBASE}

.include <bsd.port.mk>
