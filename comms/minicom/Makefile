# $OpenBSD: Makefile,v 1.22 2000/03/24 23:28:04 espie Exp $

BROKEN=		installs files automatically in /etc

PKGNAME=	minicom-1.82.1
DISTNAME=	${PKGNAME}.src
CATEGORIES=	comms
NEED_VERSION=	 1.230

MAINTAINER=     form@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

MASTER_SITES=	${MASTER_SITE_SUNSITE}  \
		http://www.clinet.fi/~walker/

MASTER_SITE_SUBDIR=     apps/serialcomm/dialout

RUN_DEPENDS=	kermit::comms/kermit
RUN_DEPENDS+=	lrz::comms/lrzsz

WRKDIST=		${WRKDIR}/${PKGNAME}/src

post-install:
.if exists(/etc/minicom/minicom.users)
	@echo "*** Found existing /etc/minicom/minicom.users -- not replacing."
.else
	${INSTALL_DATA} ${WRKSRC}/minicom.users /etc/minicom
.endif

.include <bsd.port.mk>
