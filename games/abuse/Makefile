# $OpenBSD: Makefile,v 1.21 2002/05/13 18:50:42 espie Exp $

COMMENT=	"full color 320x200 arcade quality platform shooter"

DISTNAME=	abuse-2.0
CATEGORIES=	games x11
NEED_VERSION=	1.387
MASTER_SITES=	${MASTER_SITE_GNU:=abuse/}
MASTER_SITES0=	ftp://ftp.NetBSD.ORG/pub/NetBSD/packages/distfiles/
DISTFILES=	${DISTNAME}.tar.gz abuse_data.tar.gz:0


HOMEPAGE=	http://www.crack.com/games/abuse/

MAINTAINER=	Bruno Rohee <rohee@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

.if ${MACHINE_ARCH} == "sparc"
BROKEN=		"Does not work on SPARC"
.endif

USE_X11=	Yes
USE_GMAKE=	Yes
SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE=gnu dest

post-extract:
	@mv ${WRKDIR}/addon ${WRKDIR}/art ${WRKDIR}/levels ${WRKDIR}/lisp \
	${WRKDIR}/music ${WRKDIR}/sfx ${WRKSRC}/abuse

.include <bsd.port.mk>
