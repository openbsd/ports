# $OpenBSD: Makefile,v 1.4 2013/03/22 16:25:44 naddy Exp $ 

COMMENT =		library which implements the IRC protocol
DISTNAME =		libircclient-1.6
REVISION = 		1
SHARED_LIBS =		ircclient 0.0
CATEGORIES =		net
HOMEPAGE =		http://www.ulduzsoft.com/linux/libircclient/

# LGPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		crypto ssl

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=libircclient/}
USE_GMAKE =		Yes
NO_TEST =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--enable-static \
			--enable-openssl \
			--enable-ipv6
MAKE_FLAGS =		LIBircclient_VERSION=${LIBircclient_VERSION}

.include <bsd.port.mk>
