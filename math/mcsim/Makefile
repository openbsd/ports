# $OpenBSD: Makefile,v 1.1.1.1 2001/01/19 15:24:58 reinhard Exp $

DISTNAME=	mcsim-4.2.0
CATEGORIES=	math
NEED_VERSION=	1.351

MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= mcsim

MAINTAINER=	Peter Valchev <pvalchev@toxiclinux.org>

FAKE_FLAGS=	PREFIX="${WRKINST}${PREFIX}"
WRKDIST=	${WRKDIR}/mcsim

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

do-build:
	@(cd ${WRKSRC}/mod && ${MAKE})
	@(cd ${WRKSRC}/sim && ${MAKE})
	@(cd ${WRKSRC}/sim && chmod 755 Test_mcsim && ./Test_mcsim)

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/mod/mod ${PREFIX}/bin/mod
	${INSTALL_PROGRAM} ${WRKSRC}/sim/mcsim ${PREFIX}/bin/mcsim
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mcsim
	${INSTALL_DATA} ${WRKSRC}/doc/*.txt ${WRKSRC}/doc/MCSim* ${PREFIX}/share/doc/mcsim/
	${INSTALL_DATA} ${WRKSRC}/doc/mcsim.html ${WRKSRC}/doc/mcsim.dvi ${PREFIX}/share/doc/mcsim

.include <bsd.port.mk>
