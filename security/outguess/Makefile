# $OpenBSD: Makefile,v 1.19 2010/10/18 21:41:46 espie Exp $

COMMENT=	universal steganography tool

DISTNAME=	outguess-0.2
CATEGORIES=	security
MASTER_SITES=	http://www.outguess.org/ \
		${MASTER_SITE_PACKETSTORM:=crypt/stego/}

HOMEPAGE=	http://www.outguess.org/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m

NO_REGRESS=	Yes

CONFIGURE_STYLE=gnu dest
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/jpeg-6b-steg
USE_GROFF =	Yes

WRKDIST=	${WRKDIR}/outguess

.include <bsd.port.mk>
