# New ports collection makefile for:    mgetty+sendfax
# Version required:     1.1.14
# Date created:         27 April 1998
# Whom:                 form
#

DISTNAME=	mgetty1.1.14-Apr02
PKGNAME=	mgetty-1.1.14
CATEGORIES=	comms
MASTER_SITES=	ftp://ftp.leo.org/pub/comp/os/unix/networking/mgetty/

MAINTAINER=	form@vs.itam.nsc.ru

WRKSRC=		${WRKDIR}/mgetty-1.1.14
MAKE_FLAGS=	prefix=${PREFIX} -f
MAN1=		coverpg.1 fax.1 faxq.1 faxrm.1 faxrunq.1 faxspool.1 \
		g3cat.1 g32pbm.1 pbm2g3.1 pvf.1 zplay.1
MAN4=		mgettydefs.4
MAN5=		faxqueue.5
MAN8=		sendfax.8 mgetty.8 callback.8 faxrunqd.8

MGETTY_ETC?=	/etc/mgetty

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
	@(cd ${PKGDIR}; export PKG_PREFIX=${PREFIX}; /usr/bin/perl INSTALL _ POST-INSTALL)
.endif

post-install:
	@(cd ${PKGDIR}; export PKG_PREFIX=${PREFIX} MGETTY_ETC=${MGETTY_ETC}; /usr/bin/perl INSTALL _ POST-INSTALL)

.include <bsd.port.mk>
