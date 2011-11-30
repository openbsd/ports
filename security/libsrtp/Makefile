# $OpenBSD: Makefile,v 1.1.1.1 2011/11/30 21:16:42 dhill Exp $

COMMENT=	Secure RTP library  

DISTNAME=	srtp-1.4.2
PKGNAME=	lib${DISTNAME}	
CATEGORIES=	security
EXTRACT_SUFX=	.tgz

MAINTAINER=	David Hill <dhill@openbsd.org>

HOMEPAGE=	http://srtp.sourceforge.net
MASTER_SITES=	${HOMEPAGE}/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=	${WRKDIR}/srtp

CONFIGURE_STYLE=	gnu

USE_GMAKE=	Yes
NO_REGRESS=	Yes

.include <bsd.port.mk>
