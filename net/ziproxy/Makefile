# $OpenBSD: Makefile,v 1.1.1.1 2009/10/27 16:46:10 edd Exp $

COMMENT =		compressing non-caching HTTP proxy

DISTNAME =	 	ziproxy-2.7.2
EXTRACT_SUFX = 		.tar.bz2

CATEGORIES =		net www

HOMEPAGE =		http://ziproxy.sourceforge.net/

MAINTAINER = 		Edd Barrett <edd@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += 		c m pthread z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=ziproxy/}

LIB_DEPENDS =		gif.>=5::graphics/libungif \
			png.>=8::graphics/png \
			jpeg.>=62::graphics/jpeg \
			jasper.>=2::graphics/jasper

SEPARATE_BUILD =	concurrent

CONFIGURE_STYLE =	gnu

CPPFLAGS =		-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng

CONFIGURE_ARGS = 	--with-jasper=${LOCALBASE}

CONFIGURE_ENV = 	LDFLAGS="-L${LOCALBASE}/lib" \
			CPPFLAGS="${CPPFLAGS}"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ziproxy
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ziproxy
	${INSTALL_DATA} ${WRKSRC}/src/tools/ziproxy_genhtml_stats.sh \
	    ${WRKSRC}/etc/ziproxy/* ${PREFIX}/share/examples/ziproxy
.for i in COPYING CREDITS JPEG2000* README*
	${INSTALL_DATA} ${WRKSRC}/$i ${PREFIX}/share/doc/ziproxy
.endfor

.include <bsd.port.mk>
