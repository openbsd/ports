# $OpenBSD: Makefile,v 1.1.1.1 2000/08/18 19:20:10 brad Exp $

DISTNAME=	Klone348
PKGNAME=	klone-2.0beta5
CATEGORIES=	lang
NEED_VERSION=	1.319
MASTER_SITES=	ftp://koala.inria.fr/pub/Klone/

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=	${WRKDIR}/Klone

post-extract:
	@sed -e s#!!PREFIX!!#${PREFIX}# \
		${FILESDIR}/openbsd > ${WRKSRC}/Configs/openbsd

do-configure:
	@cp -f ${WRKSRC}/Configs/openbsd ${WRKSRC}/Config.openbsd
	@echo "openbsd" > ${WRKSRC}/.dir
	@rm -f makefile

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/klone/scripts
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/klone
	${INSTALL_PROGRAM} ${WRKSRC}/klone ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/kl/* ${PREFIX}/lib/klone
	${INSTALL_SCRIPT} ${WRKSRC}/scripts/* ${PREFIX}/lib/klone/scripts
	${INSTALL_DATA} ${WRKSRC}/doc/* ${PREFIX}/share/doc/klone

.include <bsd.port.mk>
