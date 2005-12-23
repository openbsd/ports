# $OpenBSD: Makefile,v 1.2 2005/12/23 17:33:42 jolan Exp $

COMMENT=	"tftp proxy for pf"
DISTNAME=	tftp-proxy-1.6
PKGNAME=	${DISTNAME}p0
CATEGORIES=	net
MASTER_SITES=	http://jcs.org/code/

# ISC
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

NO_REGRESS=	Yes

WANTLIB=	c

MAKE_ENV+=	CC="${CC}"

.include <bsd.port.mk>
