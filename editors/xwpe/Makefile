# $OpenBSD: Makefile,v 1.12 2000/03/12 17:18:54 espie Exp $

DISTNAME=	xwpe-1.5.22a
CATEGORIES=	editors
MASTER_SITES=	${MASTER_SITE_SUNSITE} \
		http://www.identicalsoftware.com/xwpe/ 
MASTER_SITE_SUBDIR= apps/editors/X

MAINTAINER=	yanick@fries.net

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

ALL_TARGET=	xwpe

GNU_CONFIGURE=	Yes
MAKE_FLAGS=	CFLAGS='${CFLAGS} -I/usr/X11R6/include'
FAKE_FLAGS=	${MAKE_FLAGS} prefix=${WRKINST}${PREFIX}
FAKE=		Yes
#SEPARATE_BUILD=	simple

post-install:
	@strip ${PREFIX}/bin/xwpe

.include <bsd.port.mk>
