# $OpenBSD: Makefile,v 1.10 2000/02/12 08:02:16 turan Exp $

DISTNAME=	xwpe-1.5.22a
CATEGORIES=	editors
MASTER_SITES=	${MASTER_SITE_SUNSITE} \
		http://www.identicalsoftware.com/xwpe/ 
MASTER_SITE_SUBDIR= apps/editors/X

MAINTAINER=	yanick@fries.net

LICENSE_TYPE=		GPL
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

ALL_TARGET=	xwpe

GNU_CONFIGURE=	Yes

post-install:
	@strip ${PREFIX}/bin/xwpe

.include <bsd.port.mk>
