# $OpenBSD: Makefile,v 1.21 2017/07/23 09:26:28 espie Exp $

COMMENT=		ICMP active OS fingerprint scanner

DISTNAME=		xprobe2-0.3
REVISION =		1
CATEGORIES=    		net security

HOMEPAGE=		http://xprobe.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c m pcap ${COMPILER_LIBCXX}

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=xprobe/}

CONFIGURE_STYLE=	gnu
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/cfg-scripts
MAKE_ENV=		CC="${CC}" CXX="${CXX}"

NO_TEST=		Yes

.include <bsd.port.mk>
