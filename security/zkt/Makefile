# $OpenBSD: Makefile,v 1.11 2014/09/03 08:54:41 sthen Exp $

COMMENT=	DNSsec Zone Key Tool

DISTNAME=	zkt-1.1.0
REVISION=	0
CATEGORIES=	security

HOMEPAGE=	http://www.hznet.de/dns/zkt/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c ncurses

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
