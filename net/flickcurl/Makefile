# $OpenBSD: Makefile,v 1.4 2009/10/11 14:06:20 edd Exp $

COMMENT =		flickr API library and utility

DISTNAME =		flickcurl-1.14
PKGNAME = 		${DISTNAME}p0

SHARED_LIBS +=  	flickcurl   1.0      # .1.0
CATEGORIES =		net

HOMEPAGE =		http://librdf.org/flickcurl/
MAINTAINER =		Edd Barrett <edd@openbsd.org>

# LGPLv2.1/GPLv2/Apachev2.0
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		devel/gettext

WANTLIB =		c crypto m ssl xslt z

MASTER_SITES =		http://download.dajobe.org/flickcurl/

USE_LIBTOOL =		Yes

LIB_DEPENDS =		curl.>=10::net/curl \
			idn.>=16::devel/libidn \
			xml2.>=9::textproc/libxml,-main \
			raptor.>=2::textproc/raptor

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS = 	${CONFIGURE_SHARED} --with-raptor

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/flickcurl
	${INSTALL_DATA} ${FILESDIR}/README.OpenBSD \
		${PREFIX}/share/doc/flickcurl

.include <bsd.port.mk>
