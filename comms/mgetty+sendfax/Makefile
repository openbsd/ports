# $OpenBSD: Makefile,v 1.15 2000/03/24 22:11:36 espie Exp $
# $FreeBSD: Makefile,v 1.25 1998/07/16 06:44:37 vanilla Exp $

BROKEN=		installs files in /etc automatically

DISTNAME=	mgetty1.1.21-Jul24
PKGNAME=	mgetty-1.1.21
CATEGORIES=	comms
NEED_VERSION=	1.191
MASTER_SITES=	ftp://alpha.greenie.net/pub/mgetty/source/1.1/ \
		ftp://ftp.leo.org/pub/comp/os/unix/networking/mgetty/

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
