# $OpenBSD: Makefile,v 1.12 1999/06/23 06:39:12 form Exp $

PKGNAME=	minicom-1.82.1
DISTNAME=	${PKGNAME}.src
CATEGORIES=	comms

MAINTAINER=     form@openbsd.org

MASTER_SITES=	${MASTER_SITE_SUNSITE}  \
		http://www.clinet.fi/~walker/

MASTER_SITE_SUBDIR=     apps/serialcomm/dialout

WRKSRC=		${WRKDIR}/${PKGNAME}/src

pre-build:
.if defined(USE_LRZSZ)
	@cd ${WRKSRC}; /usr/bin/patch -p0 < ${FILESDIR}/patch-lrzsz; \
	touch ${WRKDIR}/.with_lrzsz
.else
	@${ECHO} "***"
	@${ECHO} "*** Building minicom with rzsz support."
	@${ECHO} "*** If you wish to use lrzsz package instead of rzsz,"
	@${ECHO} "*** do 'make USE_LRZSZ=yes'."
	@${ECHO} "***"
.endif

post-install:
.if exists(/etc/minicom/minicom.users)
	@${ECHO} "*** Found existing /etc/minicom/minicom.users -- not replacing."
.else
	${INSTALL_DATA} ${WRKSRC}/minicom.users /etc/minicom
.endif

.include <bsd.port.mk>

.if exists(${WRKDIR}/.with_lrzsz)
RUN_DEPENDS=	lrz:${PORTSDIR}/comms/lrzsz lsz:${PORTSDIR}/comms/lrzsz
.else
RUN_DEPENDS=	rz:${PORTSDIR}/comms/rzsz sz:${PORTSDIR}/comms/rzsz
.endif
RUN_DEPENDS+=	kermit:${PORTSDIR}/comms/kermit
