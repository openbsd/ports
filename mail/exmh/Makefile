# OpenBSD Makefile for:    	exmh
# Version required:		1.6.9
# Date released:		May 16 1998
# Whom:				Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.2 1998/05/17 03:22:47 angelos Exp $
#

DISTNAME=	exmh-1.6.9
CATEGORIES=	mail tk80
MASTER_SITES=	ftp://ftp.sunlabs.com/pub/tcl/exmh/
EXTRACT_SUFX=	.tar.Z

MAINTAINER=	angelos@openbsd.org

BROKEN=		exmh2

RUN_DEPENDS=	wish8.0:${PORTSDIR}/x11/tk80
WISH=		wish8.0

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

MAN1=		exmh-custom.1 exmh-ref.1 exmh-use.1 exmh.1

post-extract:
	@rm -rf ${WRKSRC}/lib/*.orig

do-build:
	@cd ${WRKSRC} && ${SETENV} PREFIX=${PREFIX} \
		WISH=${PREFIX}/bin/${WISH} WRKSRC=${WRKSRC} \
		FILESDIR=${FILESDIR} ${SH} ${SCRIPTDIR}/build

do-install:
	@cd ${WRKSRC} && ${SETENV} PREFIX=${PREFIX} \
		WRKSRC=${WRKSRC} ${SH} ${SCRIPTDIR}/install

.include <bsd.port.mk>
