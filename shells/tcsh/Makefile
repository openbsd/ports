# $OpenBSD: Makefile,v 1.13 1999/08/21 19:06:31 brad Exp $

DISTNAME=	tcsh-6.09
PKGNAME=	tcsh-6.09.00
CATEGORIES=	shells
MASTER_SITES=	ftp://ftp.astron.com/pub/tcsh/

MAINTAINER=	gene@OpenBSD.ORG

GNU_CONFIGURE=	yes
WRKSRC=		${WRKDIR}/${PKGNAME}
ALL_TARGET=	all catalogs

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/nls/el_GR.ISO_8859-7
	${INSTALL_PROGRAM} ${WRKSRC}/tcsh ${PREFIX}/bin/tcsh
	${INSTALL_MAN} ${WRKSRC}/tcsh.man ${PREFIX}/man/man1/tcsh.1
	${INSTALL_DATA} ${WRKSRC}/tcsh.C.cat ${PREFIX}/share/nls/C/tcsh.cat
	${INSTALL_DATA} ${WRKSRC}/tcsh.french.cat ${PREFIX}/share/nls/fr_FR.ISO_8859-1/tcsh.cat
	${INSTALL_DATA} ${WRKSRC}/tcsh.german.cat ${PREFIX}/share/nls/de_DE.ISO_8859-1/tcsh.cat
	${INSTALL_DATA} ${WRKSRC}/tcsh.greek.cat ${PREFIX}/share/nls/el_GR.ISO_8859-7/tcsh.cat
	${INSTALL_DATA} ${WRKSRC}/tcsh.italian.cat ${PREFIX}/share/nls/it_IT.ISO_8859-1/tcsh.cat
	${INSTALL_DATA} ${WRKSRC}/tcsh.spanish.cat ${PREFIX}/share/nls/es_ES.ISO_8859-1/tcsh.cat
	${INSTALL_DATA} ${WRKSRC}/tcsh.ja.cat ${PREFIX}/share/nls/ja_JP.EUC/tcsh.cat
	@${LN} -sf ${PREFIX}/share/nls/fr_FR.ISO_8859-1/tcsh.cat \
		${PREFIX}/share/nls/fr_BE.ISO_8859-1/tcsh.cat
	@${LN} -sf ${PREFIX}/share/nls/fr_FR.ISO_8859-1/tcsh.cat \
		${PREFIX}/share/nls/fr_CA.ISO_8859-1/tcsh.cat
	@${LN} -sf ${PREFIX}/share/nls/fr_FR.ISO_8859-1/tcsh.cat \
		${PREFIX}/share/nls/fr_CH.ISO_8859-1/tcsh.cat
	@${LN} -sf ${PREFIX}/share/nls/de_DE.ISO_8859-1/tcsh.cat \
		${PREFIX}/share/nls/de_AT.ISO_8859-1/tcsh.cat
	@${LN} -sf ${PREFIX}/share/nls/de_DE.ISO_8859-1/tcsh.cat \
		${PREFIX}/share/nls/de_CH.ISO_8859-1/tcsh.cat
	@${LN} -sf ${PREFIX}/share/nls/it_IT.ISO_8859-1/tcsh.cat \
		${PREFIX}/share/nls/it_CH.ISO_8859-1/tcsh.cat
	@PKG_PREFIX="${PREFIX}" ${SH} ${PKGDIR}/INSTALL ${DISTNAME} POST-INSTALL

.include <bsd.port.mk>
