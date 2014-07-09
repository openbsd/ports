# $OpenBSD: Makefile,v 1.5 2014/07/09 09:16:20 ajacoutot Exp $ 

COMMENT =		library which implements the IRC protocol
DISTNAME =		libircclient-1.8
CATEGORIES =		net
HOMEPAGE =		http://www.ulduzsoft.com/linux/libircclient/

SHARED_LIBS =		ircclient 1.0

# LGPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += crypto ssl

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=libircclient/}

USE_GMAKE =		Yes
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
