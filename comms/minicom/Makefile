# $OpenBSD: Makefile,v 1.18 2000/02/12 08:02:11 turan Exp $
#

PKGNAME=	minicom-1.82.1
DISTNAME=	${PKGNAME}.src
CATEGORIES=	comms

MAINTAINER=     form@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

MASTER_SITES=	${MASTER_SITE_SUNSITE}  \
		http://www.clinet.fi/~walker/
NEED_VERSION=	1.191

MASTER_SITE_SUBDIR=     apps/serialcomm/dialout

RUN_DEPENDS=	kermit:${PORTSDIR}/comms/kermit
RUN_DEPENDS+=	lrz:${PORTSDIR}/comms/lrzsz

WRKDIST=		${WRKDIR}/${PKGNAME}/src

post-install:
.if exists(/etc/minicom/minicom.users)
	@echo "*** Found existing /etc/minicom/minicom.users -- not replacing."
.else
	${INSTALL_DATA} ${WRKSRC}/minicom.users /etc/minicom
.endif

.include <bsd.port.mk>
