# OpenBSD makefile for:	popclient
# Version required:	3.0b6
# Date created:		10 Nov 1997
# Whom:			ejovi

DISTNAME=	popclient-3.0b6
CATEGORIES=	mail
MASTER_SITES=	http://www.freebsd.org/~wosch/src/

MAINTAINER=	ejovi@OpenBSD.ORG

WRKSRC=		${WRKDIR}/popclient-3.0b6
HAS_CONFIGURE=	yes
CONFIGURE_ARGS=	i386-unknown-freebsd2.1.0
ALL_TARGET=
MAN1=		popclient.1

pre-install:
	${CP} ${WRKSRC}/popclient.man ${WRKSRC}/popclient.1
	[ -f ${PREFIX}/info/dir ] || \
		${SED} -ne '1,/Menu:/p' /usr/share/info/dir > ${PREFIX}/info/dir

.include <bsd.port.mk>
