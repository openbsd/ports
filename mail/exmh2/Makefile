# OpenBSD Makefile for: 	exmh2
# Version required:		2.0zeta
# Date released:		May 16 1998
# Whom:				Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/05/17 03:21:12 angelos Exp $
#

DISTNAME=	exmh-2.0.2
CATEGORIES=	mail tk80
MASTER_SITES=	ftp://ftp.sunlabs.com/pub/tcl/exmh/
EXTRACT_SUFX=	.tar.Z

MAINTAINER=	angelos@openbsd.org

RUN_DEPENDS=	wish8.0:${PORTSDIR}/x11/tk80
BUILD_DEPENDS=	tclsh8.0:${PORTSDIR}/lang/tcl80
WISH=		wish8.0
TCLSH=		tclsh8.0

# exmh is pretty useless without this, but it's not needed to build it.
RUN_DEPENDS+=	repl:${PORTSDIR}/mail/mh

# full mime support needs mmencode/mmdecode from metamail
RUN_DEPENDS+=	mmencode:${PORTSDIR}/mail/metamail

# Additionally, exmh will use the following ports if present:
# lang/expect
# misc/glimpse
# security/pgp
# mail/faces
# audio/rplay

MAN1=		exmh.1

do-build:
	@cd ${WRKSRC} && ${SETENV} PREFIX=${PREFIX} TCLSH=${TCLSH} \
		WISH=${PREFIX}/bin/${WISH} WRKSRC=${WRKSRC} \
		FILESDIR=${FILESDIR} ${SH} ${SCRIPTDIR}/build

do-install:
	@cd ${WRKSRC} && ${SETENV} PREFIX=${PREFIX} \
		WRKSRC=${WRKSRC} ${SH} ${SCRIPTDIR}/install

.include <bsd.port.mk>
