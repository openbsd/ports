# $OpenBSD: Makefile,v 1.11 2019/07/12 20:48:52 sthen Exp $

COMMENT =	framework for analysis of layer 2 network protocols

DISTNAME =	yersinia-0.7.3
REVISION =	0
CATEGORIES =	net security

HOMEPAGE =	http://www.yersinia.net/

MAINTAINER =	Steven Mestdagh <steven@openbsd.org>

# GPL v2
PERMIT_PACKAGE =		Yes

MASTER_SITES =	http://www.yersinia.net/download/

WANTLIB =	c curses panel pcap pthread lib/libnet-1.1/net=11

LIB_DEPENDS =	net/libnet/1.1

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--disable-gtk \
			--with-libnet-includes=${LOCALBASE}/include/libnet-1.1
CONFIGURE_ENV =		LDFLAGS="-L${LOCALBASE}/lib" \
			LIBNET_CONFIG=${LOCALBASE}/bin/libnet-config-1.1 \
			CPPFLAGS="${CPPFLAGS} -DLBL_ALIGN"
WRKDIST =	${WRKDIR}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/yersinia
	cd ${WRKSRC} && ${INSTALL_DATA} FAQ README \
		${PREFIX}/share/doc/yersinia

.include <bsd.port.mk>
