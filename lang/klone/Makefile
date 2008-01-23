# $OpenBSD: Makefile,v 1.10 2008/01/23 21:22:27 merdely Exp $

COMMENT=	small, Lisp-like interpreted language

DISTNAME=	Klone359
PKGNAME=	klone-2.1ap0
CATEGORIES=	lang

MASTER_SITES=	http://koala.ilog.fr/ftp/pub/Klone/

PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m

WRKDIST=	${WRKDIR}/Klone

post-extract:
	@sed -e "s#!!PREFIX!!#${PREFIX}#; \
		 s#!!CFLAGS!!#${CFLAGS}#; \
		 s#!!CC!!#${CC}#" \
		${FILESDIR}/openbsd > ${WRKSRC}/Configs/openbsd

do-configure:
	@cp -f ${WRKSRC}/Configs/openbsd ${WRKSRC}/Config.openbsd
	@echo "openbsd" > ${WRKSRC}/.dir
	@rm -f makefile

NO_REGRESS=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/klone/scripts
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/klone
	${INSTALL_PROGRAM} ${WRKSRC}/klone ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/kl/* ${PREFIX}/lib/klone
	${INSTALL_SCRIPT} ${WRKSRC}/scripts/* ${PREFIX}/lib/klone/scripts
	${INSTALL_DATA} ${WRKSRC}/doc/* ${PREFIX}/share/doc/klone

.include <bsd.port.mk>
