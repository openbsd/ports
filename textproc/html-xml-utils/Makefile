# $OpenBSD: Makefile,v 1.17 2019/10/17 08:56:35 bentley Exp $

COMMENT =		simple utilities for manipulating HTML and XML files

DISTNAME =		html-xml-utils-7.8

CATEGORIES =		textproc

HOMEPAGE =		https://www.w3.org/Tools/HTML-XML-utils/

MAINTAINER =		Anthony J. Bentley <anthony@anjbe.name>

# W3C license
PERMIT_PACKAGE =	Yes

WANTLIB += c crypto curl iconv idn nghttp2 ssl z

MASTER_SITES =		https://www.w3.org/Tools/HTML-XML-utils/

LIB_DEPENDS =		converters/libiconv \
			devel/libidn \
			net/curl

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--with-libidn=${LOCALBASE}

.include <bsd.port.mk>
