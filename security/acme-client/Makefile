# $OpenBSD: Makefile,v 1.2 2019/06/03 16:06:55 sthen Exp $

COMMENT=	privilege-separated letsencrypt client

DISTNAME=	acme-client-0.1.16
EXTRACT_SUFX=	.tgz

CATEGORIES=	security security/letsencrypt

HOMEPAGE =	https://kristaps.bsd.lv/acme-client/
MASTER_SITES=	${HOMEPAGE}snapshots/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# ISC
PERMIT_PACKAGE=	Yes

# uses pledge()
WANTLIB += c crypto ssl tls

NO_TEST=	Yes

ALL_TARGET=	acme-client

post-install:
	mv ${PREFIX}/bin/{,e}acme-client
	mv ${PREFIX}/man/man1/{,e}acme-client.1

.include <bsd.port.mk>
