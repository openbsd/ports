# $OpenBSD: Makefile,v 1.23 2019/07/12 20:49:50 sthen Exp $

COMMENT=	multiuser tip/cu replacement with logging

DISTNAME=       rtty-4.0
REVISION =	0
CATEGORIES=	sysutils

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=		c 

MASTER_SITES=   ${MASTER_SITE_ISC:=rtty/}
EXTRACT_SUFX=	.shar.gz

WRKDIST=	${WRKDIR}

NO_TEST=	Yes

DESTDIRNAME=	DESTROOT

post-install:
	@${INSTALL_DATA} ${WRKDIR}/README ${PREFIX}/rtty

.include <bsd.port.mk>
