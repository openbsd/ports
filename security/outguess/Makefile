# $OpenBSD: Makefile,v 1.22 2019/07/12 20:49:06 sthen Exp $

COMMENT=	universal steganography tool

DISTNAME=	outguess-0.2
CATEGORIES=	security
MASTER_SITES=	http://www.outguess.org/ \
		${MASTER_SITE_PACKETSTORM:=crypt/stego/}

HOMEPAGE=	http://www.outguess.org/

# BSD
PERMIT_PACKAGE=	Yes
WANTLIB=		c m

NO_TEST=	Yes

CONFIGURE_STYLE=gnu dest
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/jpeg-6b-steg

WRKDIST=	${WRKDIR}/outguess

.include <bsd.port.mk>
