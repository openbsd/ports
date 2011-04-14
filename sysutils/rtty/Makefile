# $OpenBSD: Makefile,v 1.21 2011/04/14 13:47:59 sthen Exp $

COMMENT=	multiuser tip/cu replacement with logging

DISTNAME=       rtty-4.0
REVISION =	0
CATEGORIES=	sysutils

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c 

MASTER_SITES=   ${MASTER_SITE_ISC:=rtty/}
EXTRACT_SUFX=	.shar.gz

WRKDIST=	${WRKDIR}

NO_REGRESS=	Yes

DESTDIRNAME=	DESTROOT

post-install:
	@${INSTALL_DATA} ${WRKDIR}/README ${PREFIX}/rtty

.include <bsd.port.mk>
