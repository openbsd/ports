# $OpenBSD: Makefile,v 1.14 2003/05/12 08:23:48 jolan Exp $

COMMENT=	"universal steganography tool"

DISTNAME=	outguess-0.2
CATEGORIES=	security
MASTER_SITES=	http://www.outguess.org/ \
		${MASTER_SITE_PACKETSTORM:=crypt/stego/}

HOMEPAGE=	http://www.outguess.org/

MAINTAINER=	Jolan Luff <jolan@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_REGRESS=	Yes

CONFIGURE_STYLE=gnu dest

WRKDIST=	${WRKDIR}/outguess

.include <bsd.port.mk>
