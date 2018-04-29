# $OpenBSD: Makefile,v 1.14 2018/04/29 09:28:53 naddy Exp $

COMMENT =		simple utilities for manipulating HTML and XML files

DISTNAME =		html-xml-utils-7.6
REVISION =		0

CATEGORIES =		textproc

HOMEPAGE =		https://www.w3.org/Tools/HTML-XML-utils/

MAINTAINER =		Anthony J. Bentley <anthony@anjbe.name>

# W3C license
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c crypto curl iconv idn nghttp2 ssl z

MASTER_SITES =		https://www.w3.org/Tools/HTML-XML-utils/

BUILD_DEPENDS =		devel/autoconf/${AUTOCONF_VERSION} \
			devel/automake/${AUTOMAKE_VERSION}
# for iconv.m4, config.rpath
BUILD_DEPENDS +=	devel/gettext-tools

LIB_DEPENDS =		converters/libiconv \
			devel/libidn \
			net/curl

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.15
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--with-libidn=${LOCALBASE}

# config.rpath is required by AM_ICONV
pre-configure:
	cp ${LOCALBASE}/share/gettext/config.rpath ${WRKSRC}
	cd ${WRKSRC} && AUTOCONF_VERSION=${AUTOCONF_VERSION} \
	    AUTOMAKE_VERSION=${AUTOMAKE_VERSION} autoreconf -fi

.include <bsd.port.mk>
