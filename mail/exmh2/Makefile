# OpenBSD Makefile for: 	exmh2
# Version required:		2.0zeta
# Date released:		May 16 1998
# Whom:				Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.6 2000/03/19 16:04:20 espie Exp $
#

DISTNAME=	exmh-2.0.2
CATEGORIES=	mail tk80
NEED_VERSION=	1.223
MASTER_SITES=	ftp://ftp.scriptics.com/pub/tcl/exmh/
EXTRACT_SUFX=	.tar.Z

MAINTAINER=	angelos@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	wish8.0:x11/tk80
BUILD_DEPENDS=	tclsh8.0:lang/tcl80
WISH=		wish8.0
TCLSH=		tclsh8.0

# exmh is pretty useless without this, but it's not needed to build it.
RUN_DEPENDS+=	repl:mail/nmh

# full mime support needs mmencode/mmdecode from metamail
RUN_DEPENDS+=	mmencode:mail/metamail

# Additionally, exmh will use the following ports if present:
# lang/expect
# misc/glimpse
# security/pgp
# mail/faces
# audio/rplay

NO_PACKAGE=	needs per-host config at build time

do-build:
	@cd ${WRKSRC} && ${SETENV} PREFIX=${PREFIX} TCLSH=${TCLSH} \
		WISH=${PREFIX}/bin/${WISH} WRKSRC=${WRKSRC} \
		FILESDIR=${FILESDIR} ${SH} ${SCRIPTDIR}/build

do-install:
	@cd ${WRKSRC} && ${SETENV} PREFIX=${PREFIX} \
		WRKSRC=${WRKSRC} ${SH} ${SCRIPTDIR}/install

.include <bsd.port.mk>
