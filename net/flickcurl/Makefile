# $OpenBSD: Makefile,v 1.14 2013/11/21 23:51:54 edd Exp $

COMMENT =		flickr API library and utility

DISTNAME =		flickcurl-1.25

SHARED_LIBS +=  	flickcurl   1.1      # 0.0
CATEGORIES =		net

HOMEPAGE =		http://librdf.org/flickcurl/
MAINTAINER =		Edd Barrett <edd@openbsd.org>

# LGPLv2.1/GPLv2/Apachev2.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		devel/gettext

WANTLIB =		c crypto curl>=10 idn>=16 m raptor2 ssl \
			xml2>=9 xslt yajl z

MASTER_SITES =		http://download.dajobe.org/flickcurl/

USE_GROFF =		Yes

LIB_DEPENDS =		net/curl \
			textproc/libxml,-main \
			textproc/raptor>=2

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	${CONFIGURE_SHARED} --with-raptor=2

.include <bsd.port.mk>
