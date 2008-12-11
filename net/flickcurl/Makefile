# $OpenBSD: Makefile,v 1.1.1.1 2008/12/11 22:35:42 jasper Exp $

COMMENT =		flickr API library and utility

DISTNAME =		flickcurl-1.5
SHARED_LIBS +=  flickcurl            0.0      # .0.0
CATEGORIES =		net

HOMEPAGE =		http://librdf.org/flickcurl/
MAINTAINER =		Edd Barrett <vext01@gmail.com>

# LGPLv2.1/GPLv2/Apachev2.0
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		devel/gettext

WANTLIB =		c crypto m ssl z

MASTER_SITES =		http://download.dajobe.org/flickcurl/

USE_LIBTOOL =		Yes

LIB_DEPENDS =		curl.>=10::net/curl \
			idn.>=16::devel/libidn \
			xml2.>=9::textproc/libxml,-main \

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS = 	--without-raptor

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/flickcurl
	${INSTALL_DATA} ${FILESDIR}/README.OpenBSD \
		${PREFIX}/share/doc/flickcurl

.include <bsd.port.mk>
