# $OpenBSD: Makefile,v 1.17 2015/04/21 18:53:16 sthen Exp $

COMMENT =		flickr API library and utility

DISTNAME =		flickcurl-1.25
REVISION =		1

SHARED_LIBS +=  	flickcurl   1.1      # 0.0
CATEGORIES =		net

HOMEPAGE =		http://librdf.org/flickcurl/
MAINTAINER =		Edd Barrett <edd@openbsd.org>

# LGPLv2.1/GPLv2/Apachev2.0
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c crypto curl>=10 idn>=16 lzma m pthread raptor2 ssl xml2>=9
WANTLIB += xslt yajl z

MODULES =		devel/gettext


MASTER_SITES =		http://download.dajobe.org/flickcurl/

LIB_DEPENDS =		net/curl \
			textproc/libxml,-main \
			textproc/raptor>=2

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	${CONFIGURE_SHARED} --with-raptor=2

.include <bsd.port.mk>
