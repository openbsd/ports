# $OpenBSD: Makefile,v 1.7 1999/09/23 21:06:17 brad Exp $

DISTNAME=	abuse-2.0
CATEGORIES=	games x11
MASTER_SITES=	${MASTER_SITE_GNU} \
		ftp://ftp.NetBSD.ORG/pub/NetBSD/packages/distfiles/
MASTER_SITE_SUBDIR= abuse
DISTFILES=	${DISTNAME}.tar.gz abuse_data.tar.gz

HOMEPAGE=	http://www.crack.com/games/abuse/

MAINTAINER=	rohee@openbsd.org

.if ${MACHINE_ARCH} == "sparc"
BROKEN=		"Does not work on SPARC"
.endif

USE_X11=	yes
USE_GMAKE=	yes
SEPARATE_BUILD=	concurrent
GNU_CONFIGURE=	yes

post-extract:
	@${MV} ${WRKDIR}/addon ${WRKDIR}/art ${WRKDIR}/levels ${WRKDIR}/lisp \
	${WRKDIR}/music ${WRKDIR}/sfx ${WRKSRC}/abuse

.include <bsd.port.mk>
