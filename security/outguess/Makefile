# $OpenBSD: Makefile,v 1.20 2013/03/11 11:41:26 espie Exp $

COMMENT=	universal steganography tool

DISTNAME=	outguess-0.2
CATEGORIES=	security
MASTER_SITES=	http://www.outguess.org/ \
		${MASTER_SITE_PACKETSTORM:=crypt/stego/}

HOMEPAGE=	http://www.outguess.org/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c m

NO_TEST=	Yes

CONFIGURE_STYLE=gnu dest
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/jpeg-6b-steg
USE_GROFF =	Yes

WRKDIST=	${WRKDIR}/outguess

.include <bsd.port.mk>
