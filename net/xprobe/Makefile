# $OpenBSD: Makefile,v 1.26 2019/07/12 20:48:52 sthen Exp $

COMMENT=		ICMP active OS fingerprint scanner

DISTNAME=		xprobe2-0.3
REVISION =		5
CATEGORIES=    		net security

HOMEPAGE=		http://xprobe.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE=	Yes
WANTLIB=		c m pcap ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=xprobe/}

CONFIGURE_STYLE=	gnu
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/cfg-scripts
MAKE_ENV=		CC="${CC}" CXX="${CXX}"

NO_TEST=		Yes

.include <bsd.port.mk>
