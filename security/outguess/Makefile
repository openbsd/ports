# $OpenBSD: Makefile,v 1.11 2002/06/14 10:55:01 jsyn Exp $

COMMENT=	"universal steganography tool"

DISTNAME=	outguess-0.2
CATEGORIES=	security
MASTER_SITES=	http://www.outguess.org/ \
		${MASTER_SITE_PACKETSTORM:=crypt/stego/}
HOMEPAGE=	http://www.outguess.org/
NEED_VERSION=	1.531

MAINTAINER=	Dug Song <dugsong@monkey.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu dest

WRKDIST=	${WRKDIR}/outguess

NO_REGRESS=	Yes

.include <bsd.port.mk>
