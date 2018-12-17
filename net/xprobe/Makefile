# $OpenBSD: Makefile,v 1.24 2018/12/17 18:44:18 jca Exp $

COMMENT=		ICMP active OS fingerprint scanner

DISTNAME=		xprobe2-0.3
REVISION =		4
CATEGORIES=    		net security

HOMEPAGE=		http://xprobe.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c m pcap ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=xprobe/}

CONFIGURE_STYLE=	gnu
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/cfg-scripts
MAKE_ENV=		CC="${CC}" CXX="${CXX}"

NO_TEST=		Yes

.include <bsd.port.mk>
