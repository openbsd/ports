COMMENT=	stand-alone client/server 9P library

DISTNAME=	libixp-0.4
REVISION =	2
CATEGORIES=	devel

HOMEPAGE=	http://www.suckless.org

# MIT/X, except intmap.c under Plan 9 License
PERMIT_PACKAGE=	Yes

SITES=		${HOMEPAGE}/download/

WANTLIB=	c

NO_TEST=	Yes

pre-configure:
	@perl -pi -e 's,!!CFLAGS!!,${CFLAGS},g;' \
		-e 's,!!CC!!,${CC},g' ${WRKSRC}/config.mk

.include <bsd.port.mk>
