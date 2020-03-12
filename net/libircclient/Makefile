# $OpenBSD: Makefile,v 1.11 2020/03/12 13:50:19 tracey Exp $

COMMENT =		library which implements the IRC protocol
DISTNAME =		libircclient-1.10
CATEGORIES =		net
HOMEPAGE =		https://www.ulduzsoft.com/linux/libircclient/

SHARED_LIBS =		ircclient 1.0

# LGPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += crypto pthread ssl

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=libircclient/}

NO_TEST =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--enable-shared \
			--enable-openssl \
			--enable-ipv6

MAKE_FLAGS =		APIVERSION=${LIBircclient_VERSION}
FAKE_FLAGS =		exec_prefix=${PREFIX}

post-install:
	rm ${PREFIX}/lib/libircclient.so

.include <bsd.port.mk>
