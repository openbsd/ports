# $OpenBSD: Makefile,v 1.8 1998/12/18 02:55:46 form Exp $
# $FreeBSD: Makefile,v 1.25 1998/07/16 06:44:37 vanilla Exp $

DISTNAME=	mgetty1.1.19-Nov24
PKGNAME=	mgetty-1.1.19
CATEGORIES=	comms
MASTER_SITES=	ftp://ftp.leo.org/pub/comp/os/unix/networking/mgetty/

MAINTAINER=	form@OpenBSD.ORG

WRKSRC=		${WRKDIR}/${PKGNAME}
MAKE_ENV+=	prefix=${PREFIX} spool=/var/spool \
		CONFDIR=/etc/mgetty+sendfax \
		PHONE_GROUP=wheel PHONE_PERMS=700

MAN1=		coverpg.1 fax.1 faxq.1 faxrm.1 faxrunq.1 faxspool.1 g3cat.1 \
		g32pbm.1 pbm2g3.1 pvf.1 zplay.1
MAN4=		mgettydefs.4
MAN5=		faxqueue.5
MAN8=		callback.8 faxrunqd.8 mgetty.8 sendfax.8 

post-build:
	${SED} -e "s,@prefix@,${PREFIX},g" ${FILESDIR}/setup >${WRKDIR}/setup

post-install:
	${INSTALL_SCRIPT} ${WRKDIR}/setup ${PREFIX}/lib/mgetty+sendfax
	@${ECHO} "***"
	@${ECHO} "*** Finished installing mgetty+sendfax."
	@${ECHO} "*** To complete the install, run ${PREFIX}/lib/mgetty+sendfax/setup"
	@${ECHO} "*** script."
	@${ECHO} "***"

.include <bsd.port.mk>
