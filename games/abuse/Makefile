# $OpenBSD: Makefile,v 1.18 2000/10/22 14:03:12 espie Exp $

DISTNAME=	abuse-2.0
CATEGORIES=	games x11
NEED_VERSION=	1.121
FAKE=		Yes
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITES0=	ftp://ftp.NetBSD.ORG/pub/NetBSD/packages/distfiles/
MASTER_SITE_SUBDIR= abuse
DISTFILES=	${DISTNAME}.tar.gz abuse_data.tar.gz:0


HOMEPAGE=	http://www.crack.com/games/abuse/

MAINTAINER=	Bruno Rohee <rohee@openbsd.org>

LICENSE_TYPE=		PD
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

.if ${MACHINE_ARCH} == "sparc"
BROKEN=		"Does not work on SPARC"
.endif

USE_X11=	Yes
USE_GMAKE=	Yes
SEPARATE_BUILD=	concurrent
HAS_CONFIGURE=	Yes
CONFIGURE_ARGS=--prefix='$${DESTDIR}${PREFIX}' --sysconfdir='$${DESTDIR}/etc'

post-extract:
	@mv ${WRKDIR}/addon ${WRKDIR}/art ${WRKDIR}/levels ${WRKDIR}/lisp \
	${WRKDIR}/music ${WRKDIR}/sfx ${WRKSRC}/abuse

.include <bsd.port.mk>
