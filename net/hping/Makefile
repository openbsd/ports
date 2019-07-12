# $OpenBSD: Makefile,v 1.33 2019/07/12 20:48:27 sthen Exp $

COMMENT=	command-line oriented TCP/IP packet assembler/analyzer

GH_ACCOUNT=	antirez
GH_PROJECT=	hping
GH_COMMIT=	3547c7691742c6eaa31f8402e0ccbb81387c1b99
DISTNAME=	hping-3.0.0-alpha-1
PKGNAME=	hping-3.0.0pre1

CATEGORIES=	net

HOMEPAGE=	http://www.hping.org/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB=		c pcap

CONFIGURE_STYLE=simple
CONFIGURE_ARGS=	--no-tcl

MAKE_FLAGS=	CC="${CC}" \
		CFLAGS="${CFLAGS}"

NO_TEST=	Yes

post-extract:
	sed -i 's/hping2/hping/g; s/HPING2/HPING/g' ${WRKSRC}/docs/hping3.8

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/hping3 ${PREFIX}/sbin/hping
	${INSTALL_MAN} ${WRKSRC}/docs/hping3.8 ${PREFIX}/man/man8/hping.8

.include <bsd.port.mk>
