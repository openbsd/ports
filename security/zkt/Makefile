# $OpenBSD: Makefile,v 1.15 2019/07/17 14:39:42 danj Exp $

COMMENT=	DNSsec Zone Key Tool

DISTNAME=	zkt-1.1.4
CATEGORIES=	security
REVISION=	1

HOMEPAGE=	http://www.hznet.de/dns/zkt/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	c curses

RUN_DEPENDS=	net/isc-bind
BUILD_DEPENDS=	net/isc-bind
MASTER_SITES=	${HOMEPAGE}

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-configpath=/var/named/etc \
			--enable-bind_util_path=${LOCALBASE}/sbin

NO_TEST=		Yes

PROGRAMS=		zkt-conf zkt-keyman zkt-ls zkt-signer zkt-soaserial
MAN8=			zkt-conf.8 zkt-keyman.8 zkt-ls.8 zkt-signer.8

do-install:
.for p in ${PROGRAMS}
	${INSTALL_PROGRAM} ${WRKBUILD}/${p} ${PREFIX}/sbin
.endfor
.for p in ${MAN8}
	${INSTALL_MAN} ${WRKBUILD}/man/${p} ${PREFIX}/man/man8
.endfor

.include <bsd.port.mk>
