# $OpenBSD: Makefile,v 1.11 1999/08/28 18:13:36 brad Exp $
# $FreeBSD: Makefile,v 1.25 1998/07/16 06:44:37 vanilla Exp $

DISTNAME=	mgetty1.1.21-Jul24
PKGNAME=	mgetty-1.1.21
CATEGORIES=	comms
MASTER_SITES=	ftp://ftp.leo.org/pub/comp/os/unix/networking/mgetty/

MAINTAINER=	brad@openbsd.org

WRKSRC=		${WRKDIR}/${PKGNAME}
MAKE_ENV+=	prefix="${PREFIX}" spool="/var/spool" \
		CONFDIR="/etc/mgetty+sendfax" \
		PHONE_GROUP="wheel" PHONE_PERMS="700"

post-build:
	@${SED} -e "s,@prefix@,${PREFIX},g" ${FILESDIR}/setup > ${WRKDIR}/setup

post-install:
	${INSTALL_SCRIPT} ${WRKDIR}/setup ${PREFIX}/lib/mgetty+sendfax
	@${ECHO} "***"
	@${ECHO} "*** Finished installing mgetty+sendfax."
	@${ECHO} "*** To complete the install, run ${PREFIX}/lib/mgetty+sendfax/setup"
	@${ECHO} "*** script."
	@${ECHO} "***"

.include <bsd.port.mk>
