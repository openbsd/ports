# $OpenBSD: Makefile,v 1.12 2002/12/29 20:31:40 fgsch Exp $

COMMENT=	"universal steganography tool"

DISTNAME=	outguess-0.2
CATEGORIES=	security
MASTER_SITES=	http://www.outguess.org/ \
		${MASTER_SITE_PACKETSTORM:=crypt/stego/}
HOMEPAGE=	http://www.outguess.org/

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
