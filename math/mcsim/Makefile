# $OpenBSD: Makefile,v 1.13 2013/03/11 11:23:55 espie Exp $

COMMENT=	monte carlo simulation software

DISTNAME=	mcsim-4.2.0
CATEGORIES=	math
REVISION=	0
MASTER_SITES=	${MASTER_SITE_GNU:=mcsim/}

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

FAKE_FLAGS=	PREFIX="${WRKINST}${PREFIX}"
WRKDIST=	${WRKDIR}/mcsim

PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c m

do-build:
	@(cd ${WRKSRC}/mod && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS})
	@(cd ${WRKSRC}/sim && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS})

do-test:
	@(cd ${WRKSRC}/sim && chmod 755 Test_mcsim && ./Test_mcsim)

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/mod/mod ${PREFIX}/bin/mcmod
	${INSTALL_PROGRAM} ${WRKSRC}/sim/mcsim ${PREFIX}/bin/mcsim
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mcsim
	${INSTALL_DATA} ${WRKSRC}/doc/*.txt ${WRKSRC}/doc/MCSim* ${PREFIX}/share/doc/mcsim/
	${INSTALL_DATA} ${WRKSRC}/doc/mcsim.html ${WRKSRC}/doc/mcsim.dvi ${PREFIX}/share/doc/mcsim

.include <bsd.port.mk>
