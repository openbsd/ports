# $OpenBSD: Makefile,v 1.5 2000/02/22 17:08:39 espie Exp $
# $NetBSD: Makefile,v 1.2 1998/08/23 20:48:03 frueauf Exp $

DISTNAME=	sim_2.3d
PKGNAME=	simh-2.3d
CATEGORIES=	emulators
MASTER_SITES=	ftp://minnie.cs.adfa.oz.au/pub/PDP-11/Sims/Supnik_2.3/sources/
NEED_VERSION=	1.210

MAINTAINER=	form@openbsd.org

WRKDIST=	${WRKDIR}

MAKE_FILE=	${FILESDIR}/Makefile

do-install:
.for f in i1401 nova pdp1 pdp4 pdp7 pdp8 pdp9 pdp11 pdp15
	${INSTALL_PROGRAM} ${WRKDIR}/${f} ${PREFIX}/bin/simh-${f}
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/simh
	${INSTALL_DATA} ${WRKDIR}/simh_doc.txt ${PREFIX}/share/doc/simh

.include <bsd.port.mk>
