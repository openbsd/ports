# $OpenBSD: Makefile,v 1.14 1999/12/09 03:28:30 form Exp $
#
# Use make LRZSZ=yes to build minicom with lrzsz package support.

PKGNAME=	minicom-1.82.1
DISTNAME=	${PKGNAME}.src
CATEGORIES=	comms

MAINTAINER=     form@openbsd.org

MASTER_SITES=	${MASTER_SITE_SUNSITE}  \
		http://www.clinet.fi/~walker/

MASTER_SITE_SUBDIR=     apps/serialcomm/dialout

RUN_DEPENDS=	kermit:${PORTSDIR}/comms/kermit
.if defined(USE_LRZSZ) && ${USE_LRZSZ:U} == "YES"
RUN_DEPENDS+=	lrz:${PORTSDIR}/comms/lrzsz lsz:${PORTSDIR}/comms/lrzsz
.else
RUN_DEPENDS+=	rz:${PORTSDIR}/comms/rzsz sz:${PORTSDIR}/comms/rzsz
.endif

WRKSRC=		${WRKDIR}/${PKGNAME}/src

.if defined(USE_LRZSZ) && ${USE_LRZSZ:U} == "YES"
post-patch:
	@cd ${WRKSRC}; ${PATCH} ${PATCH_STRIP} < ${FILESDIR}/patch-lrzsz \
		2>/dev/null
.endif

post-install:
.if exists(/etc/minicom/minicom.users)
	@${ECHO} "*** Found existing /etc/minicom/minicom.users -- not replacing."
.else
	${INSTALL_DATA} ${WRKSRC}/minicom.users /etc/minicom
.endif

.include <bsd.port.mk>
