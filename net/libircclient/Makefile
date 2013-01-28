# $OpenBSD: Makefile,v 1.1.1.1 2013/01/28 13:49:52 stsp Exp $ 

COMMENT =		library which implements the IRC protocol
DISTNAME =		libircclient-1.6
SHARED_LIBS =		ircclient 0.0
CATEGORIES =		net
HOMEPAGE =		http://www.ulduzsoft.com/linux/libircclient/

# LGPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		crypto ssl

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=libircclient/}
USE_GMAKE =		Yes
NO_REGRESS =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--enable-shared \
			--enable-static \
			--enable-openssl \
			--enable-ipv6
MAKE_FLAGS =		LIBircclient_VERSION=${LIBircclient_VERSION}

.include <bsd.port.mk>
