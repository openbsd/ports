# $OpenBSD: Makefile,v 1.3 1998/08/28 06:11:48 marc Exp $
# $FreeBSD: Makefile,v 1.25 1998/07/16 06:44:37 vanilla Exp $

# Port			created			by
# mgetty+sendfax	27 April 1998		form

DISTNAME=	mgetty1.1.17-Aug07
PKGNAME=	mgetty-1.1.17
CATEGORIES=	comms
MASTER_SITES=	ftp://ftp.leo.org/pub/comp/os/unix/networking/mgetty/

MAINTAINER=	form@vs.itam.nsc.ru

IS_INTERACTIVE=	yes

WRKSRC=		${WRKDIR}/mgetty-1.1.17
MAKE_FLAGS=	prefix=${PREFIX} -f

MGETTY_ETC?=	/etc

pre-build:
.if defined(AUTO_PPP)
CFLAGS+= "-DAUTO_PPP"
.else
	@${ECHO} "***"
	@${ECHO} "*** You're building mgetty without PPP detection support."
	@${ECHO} "*** If you want to enable it, type \"make AUTO_PPP=yes\""
	@${ECHO} "***"
.endif

pre-install:
	@(cd ${WRKSRC}/doc; ${MAKE} manpages)

.if !defined(BATCH)
post-install:
	@(cd ${PKGDIR}; \
	  export PKG_PREFIX=${PREFIX} MGETTY_ETC=${MGETTY_ETC}; \
	  /usr/bin/perl INSTALL _ POST-INSTALL)
.endif

.include <bsd.port.mk>
