# OpenBSD makefile for:	tcsh
# Version required:     6.07.02
# Date created:		17 November 1997
# Whom:			gene
#
# $OpenBSD: Makefile,v 1.11 1999/04/08 15:53:29 marc Exp $
#

DISTNAME=       tcsh-6.08
PKGNAME=        tcsh-6.08.00
CATEGORIES=	shells
MASTER_SITES=   ftp://ftp.astron.com/pub/tcsh/

MAINTAINER=     gene@OpenBSD.ORG

GNU_CONFIGURE=  yes
WRKSRC=         ${WRKDIR}/${PKGNAME}
ALL_TARGET=     all catalogs
#INSTALL_TARGET= install install.man
MAN1=		tcsh.1

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/tcsh ${PREFIX}/bin/tcsh
	${INSTALL_MAN} ${WRKSRC}/tcsh.man ${PREFIX}/man/man1/tcsh.1
	${INSTALL_DATA} ${WRKSRC}/tcsh.C.cat ${PREFIX}/share/nls/C/tcsh.cat
	${INSTALL_DATA} ${WRKSRC}/tcsh.french.cat ${PREFIX}/share/nls/fr_FR.ISO_8859-1/tcsh.cat
	${LN} -sf ${PREFIX}/share/nls/fr_FR.ISO_8859-1/tcsh.cat \
		${PREFIX}/share/nls/fr_BE.ISO_8859-1/tcsh.cat
	${LN} -sf ${PREFIX}/share/nls/fr_FR.ISO_8859-1/tcsh.cat \
		${PREFIX}/share/nls/fr_CA.ISO_8859-1/tcsh.cat
	${LN} -sf ${PREFIX}/share/nls/fr_FR.ISO_8859-1/tcsh.cat \
		${PREFIX}/share/nls/fr_CH.ISO_8859-1/tcsh.cat
	${INSTALL_DATA} ${WRKSRC}/tcsh.german.cat ${PREFIX}/share/nls/de_DE.ISO_8859-1/tcsh.cat
	${LN} -sf ${PREFIX}/share/nls/de_DE.ISO_8859-1/tcsh.cat \
		${PREFIX}/share/nls/de_AT.ISO_8859-1/tcsh.cat
	${LN} -sf ${PREFIX}/share/nls/de_DE.ISO_8859-1/tcsh.cat \
		${PREFIX}/share/nls/de_CH.ISO_8859-1/tcsh.cat
	${INSTALL_DATA_DIR} ${PREFIX}/share/nls/el_GR.ISO_8859-7
	${INSTALL_DATA} ${WRKSRC}/tcsh.greek.cat ${PREFIX}/share/nls/el_GR.ISO_8859-7/tcsh.cat
	@PKG_PREFIX="${PREFIX}" ${SH} ${PKGDIR}/INSTALL ${DISTNAME} POST-INSTALL

.include <bsd.port.mk>
