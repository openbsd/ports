# $OpenBSD: Makefile,v 1.13 2000/02/11 00:37:18 espie Exp $
# $FreeBSD: Makefile,v 1.25 1998/07/16 06:44:37 vanilla Exp $

DISTNAME=	mgetty1.1.21-Jul24
PKGNAME=	mgetty-1.1.21
CATEGORIES=	comms
MASTER_SITES=	ftp://alpha.greenie.net/pub/mgetty/source/1.1/ \
		ftp://ftp.leo.org/pub/comp/os/unix/networking/mgetty/
NEED_VERSION=	1.191

HOMEPAGE=	http://alpha.greenie.net/mgetty/

MAINTAINER=	brad@openbsd.org

MAKE_ENV+=	prefix="${PREFIX}" spool="/var/spool" \
		CONFDIR="/etc/mgetty+sendfax" \
		PHONE_GROUP="wheel" PHONE_PERMS="700"

WRKDIST=	${WRKDIR}/${PKGNAME}

post-build:
	@sed -e "s,@prefix@,${PREFIX},g" ${FILESDIR}/setup > ${WRKDIR}/setup

post-install:
	${INSTALL_SCRIPT} ${WRKDIR}/setup ${PREFIX}/lib/mgetty+sendfax
	@echo "***"
	@echo "*** Finished installing mgetty+sendfax."
	@echo "*** To complete the install, run ${PREFIX}/lib/mgetty+sendfax/setup"
	@echo "*** script."
	@echo "***"

.include <bsd.port.mk>
