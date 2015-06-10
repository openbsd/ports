# $OpenBSD: Makefile,v 1.15 2015/06/10 11:05:02 jca Exp $

COMMENT=		passive network mapping tool

DISTNAME=		siphon-v.666
PKGNAME=		siphon-0.666
REVISION=		0
CATEGORIES=    		security net

# BSD-style
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c pcap pthread

# DEAD MASTER_SITES
MASTER_SITES=		${MASTER_SITE_PACKETSTORM:=UNIX/utilities/}

MAKE_FLAGS=		CC="${CC}" \
			CFLAGS='${CFLAGS} -Wall -I. \
				-DSYSCONFDIR="\"${SYSCONFDIR}\""' \
			CCFLAGS='-pthread \
				-DSYSCONFDIR="\"${SYSCONFDIR}\""'
MAKE_ENV=		SYSCONFDIR="${SYSCONFDIR}"

NO_TEST=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/siphon ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/siphon
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/siphon
	${INSTALL_DATA} ${WRKSRC}/LICENSE ${PREFIX}/share/doc/siphon
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/siphon
	${INSTALL_DATA} ${WRKSRC}/osprints.conf ${PREFIX}/share/examples/siphon

.include <bsd.port.mk>
