# $OpenBSD: Makefile,v 1.3 2000/01/26 13:52:39 form Exp $
# $NetBSD: Makefile,v 1.2 1998/08/23 20:48:03 frueauf Exp $

DISTNAME=	sim_2.3d
PKGNAME=	simh-2.3d
CATEGORIES=	emulators
MASTER_SITES=	ftp://minnie.cs.adfa.oz.au/pub/PDP-11/Sims/Supnik_2.3/sources/

MAINTAINER=	form@openbsd.org

NO_WRKSUBDIR=	yes

MAKEFILE=	${FILESDIR}/Makefile

do-install:
.for f in i1401 nova pdp1 pdp4 pdp7 pdp8 pdp9 pdp11 pdp15
	${INSTALL_PROGRAM} ${WRKDIR}/${f} ${PREFIX}/bin/simh-${f}
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/simh
	${INSTALL_DATA} ${WRKDIR}/simh_doc.txt ${PREFIX}/share/doc/simh

.include <bsd.port.mk>
