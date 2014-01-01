# $OpenBSD: Makefile,v 1.8 2014/01/01 20:46:28 naddy Exp $

COMMENT=	stand-alone client/server 9P library

DISTNAME=	libixp-0.4
REVISION =	1
CATEGORIES=	devel

HOMEPAGE=	http://www.suckless.org

# MIT/X, except intmap.c under Plan 9 License
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}/download/

WANTLIB=	c

NO_TEST=	Yes

pre-configure:
	@perl -pi -e 's,!!CFLAGS!!,${CFLAGS},g;' \
		-e 's,!!CC!!,${CC},g' ${WRKSRC}/config.mk

.include <bsd.port.mk>
