# $OpenBSD: Makefile,v 1.1.1.1 2018/09/11 10:35:12 sthen Exp $

COMMENT=	privilege-separated letsencrypt client

DISTNAME=	acme-client-0.1.16
EXTRACT_SUFX=	.tgz

CATEGORIES=	security security/letsencrypt

HOMEPAGE =	https://kristaps.bsd.lv/acme-client/
MASTER_SITES=	${HOMEPAGE}snapshots/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# ISC
PERMIT_PACKAGE_CDROM=	Yes

# uses pledge()
WANTLIB += c crypto ssl tls

NO_TEST=	Yes

ALL_TARGET=	acme-client

post-install:
	mv ${PREFIX}/bin/{,e}acme-client
	mv ${PREFIX}/man/man1/{,e}acme-client.1

.include <bsd.port.mk>
