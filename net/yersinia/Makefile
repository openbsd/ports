COMMENT =	framework for analysis of layer 2 network protocols

GH_ACCOUNT = tomac
GH_PROJECT = yersinia
GH_TAGNAME = v0.8.2

CATEGORIES =	net security

MAINTAINER =	Steven Mestdagh <steven@openbsd.org>

# GPL v2
PERMIT_PACKAGE =		Yes

WANTLIB =	c curses panel pcap pthread lib/libnet-1.1/net=11

BUILD_DEPENDS = devel/glib2
LIB_DEPENDS =	net/libnet/1.1

AUTOCONF_VERSION = 	2.69
AUTOMAKE_VERSION = 	1.12
CONFIGURE_STYLE =	autoreconf
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
