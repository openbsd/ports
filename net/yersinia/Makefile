# $OpenBSD: Makefile,v 1.8 2013/06/01 14:18:40 ajacoutot Exp $

COMMENT =	framework for analysis of layer 2 network protocols

DISTNAME =	yersinia-0.7.1
CATEGORIES =	net security
REVISION =	3

HOMEPAGE =	http://www.yersinia.net/

MAINTAINER =	Steven Mestdagh <steven@openbsd.org>

# GPL v2
PERMIT_PACKAGE_CDROM =		Yes

MASTER_SITES =	http://www.yersinia.net/download/

WANTLIB =	c ncurses panel pcap pthread net

LIB_DEPENDS =	net/libnet/1.1

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--disable-gtk \
			--with-libnet-includes=${LOCALBASE}/include/libnet-1.1
CONFIGURE_ENV =		LDFLAGS="-L${LOCALBASE}/lib" \
			LIBNET_CONFIG=${LOCALBASE}/bin/libnet-config-1.1 \
			CPPFLAGS="${CPPFLAGS} -DLBL_ALIGN"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/yersinia
	cd ${WRKSRC} && ${INSTALL_DATA} FAQ README \
		${PREFIX}/share/doc/yersinia

.include <bsd.port.mk>
