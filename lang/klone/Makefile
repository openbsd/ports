# $OpenBSD: Makefile,v 1.6 2002/03/21 21:09:17 espie Exp $

COMMENT=	"small, Lisp-like interpreted language"

DISTNAME=	Klone359
PKGNAME=	klone-2.1a
CATEGORIES=	lang
NEED_VERSION=	1.515
MASTER_SITES=	http://koala.ilog.fr/ftp/pub/Klone/

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
