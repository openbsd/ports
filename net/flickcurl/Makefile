# $OpenBSD: Makefile,v 1.21 2016/11/04 11:35:19 sthen Exp $

COMMENT =		flickr API library and utility

DISTNAME =		flickcurl-1.26
REVISION =		0

SHARED_LIBS +=  	flickcurl   2.0      # 0.0
CATEGORIES =		net

HOMEPAGE =		http://librdf.org/flickcurl/

# LGPLv2.1/GPLv2/Apachev2.0
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c crypto curl>=10 lzma m nghttp2 pthread raptor2 ssl
WANTLIB += xml2>=9 xslt yajl z

MODULES =		devel/gettext


MASTER_SITES =		http://download.dajobe.org/flickcurl/

LIB_DEPENDS =		net/curl \
			textproc/libxml,-main \
			textproc/raptor>=2

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-raptor=2

.include <bsd.port.mk>
