# $OpenBSD: Makefile,v 1.3 2001/05/06 01:27:58 lebel Exp $

COMMENT=	"small, Lisp-like interpreted language"

DISTNAME=	Klone349
PKGNAME=	klone-2.1
CATEGORIES=	lang
NEED_VERSION=	1.402
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
