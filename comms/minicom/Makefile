# $OpenBSD: Makefile,v 1.15 2000/02/01 02:57:59 form Exp $
#

PKGNAME=	minicom-1.82.1
DISTNAME=	${PKGNAME}.src
CATEGORIES=	comms

MAINTAINER=     form@openbsd.org

MASTER_SITES=	${MASTER_SITE_SUNSITE}  \
		http://www.clinet.fi/~walker/

MASTER_SITE_SUBDIR=     apps/serialcomm/dialout

RUN_DEPENDS=	kermit:${PORTSDIR}/comms/kermit
RUN_DEPENDS+=	lrz:${PORTSDIR}/comms/lrzsz

WRKSRC=		${WRKDIR}/${PKGNAME}/src

post-install:
.if exists(/etc/minicom/minicom.users)
	@${ECHO} "*** Found existing /etc/minicom/minicom.users -- not replacing."
.else
	${INSTALL_DATA} ${WRKSRC}/minicom.users /etc/minicom
.endif

.include <bsd.port.mk>
