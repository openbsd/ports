# $OpenBSD: Makefile,v 1.7 2015/04/09 07:51:43 sthen Exp $ 

COMMENT =		library which implements the IRC protocol
DISTNAME =		libircclient-1.8
REVISION =		0
CATEGORIES =		net
HOMEPAGE =		http://www.ulduzsoft.com/linux/libircclient/

SHARED_LIBS =		ircclient 1.0

# LGPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += crypto pthread ssl

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=libircclient/}

NO_TEST =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	${CONFIGURE_SHARED} \
			--enable-openssl \
			--enable-ipv6

MAKE_FLAGS =		APIVERSION=${LIBircclient_VERSION}
FAKE_FLAGS =		exec_prefix=${PREFIX}

post-install:
	rm ${PREFIX}/lib/libircclient.so

.include <bsd.port.mk>
