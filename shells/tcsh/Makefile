# $OpenBSD: Makefile,v 1.37 2006/01/15 13:58:39 sturm Exp $

COMMENT=	"extended C-shell with many useful features"

DISTNAME=	tcsh-6.14.00
CATEGORIES=	shells
MASTER_SITES=	ftp://ftp.astron.com/pub/tcsh/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu

WANTLIB=	c termlib 

ALL_TARGET=	all catalogs
NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/tcsh ${PREFIX}/bin/tcsh
	${INSTALL_MAN} ${WRKSRC}/tcsh.man ${PREFIX}/man/man1/tcsh.1
	${INSTALL_DATA} ${WRKSRC}/tcsh.C.cat ${PREFIX}/share/nls/C/tcsh.cat
	${INSTALL_DATA} ${WRKSRC}/tcsh.german.cat ${PREFIX}/share/nls/de_AT.ISO_8859-1/tcsh.cat
	${INSTALL_DATA} ${WRKSRC}/tcsh.german.cat ${PREFIX}/share/nls/de_CH.ISO_8859-1/tcsh.cat
	${INSTALL_DATA} ${WRKSRC}/tcsh.german.cat ${PREFIX}/share/nls/de_DE.ISO_8859-1/tcsh.cat
	${INSTALL_DATA} ${WRKSRC}/tcsh.greek.cat ${PREFIX}/share/nls/el_GR.ISO_8859-7/tcsh.cat
	${INSTALL_DATA} ${WRKSRC}/tcsh.spanish.cat ${PREFIX}/share/nls/es_ES.ISO_8859-1/tcsh.cat
	${INSTALL_DATA} ${WRKSRC}/tcsh.finnish.cat ${PREFIX}/share/nls/fi_FI.ISO_8859-1/tcsh.cat
	${INSTALL_DATA} ${WRKSRC}/tcsh.french.cat ${PREFIX}/share/nls/fr_BE.ISO_8859-1/tcsh.cat
	${INSTALL_DATA} ${WRKSRC}/tcsh.french.cat ${PREFIX}/share/nls/fr_CA.ISO_8859-1/tcsh.cat
	${INSTALL_DATA} ${WRKSRC}/tcsh.french.cat ${PREFIX}/share/nls/fr_CH.ISO_8859-1/tcsh.cat
	${INSTALL_DATA} ${WRKSRC}/tcsh.french.cat ${PREFIX}/share/nls/fr_FR.ISO_8859-1/tcsh.cat
	${INSTALL_DATA} ${WRKSRC}/tcsh.italian.cat ${PREFIX}/share/nls/it_CH.ISO_8859-1/tcsh.cat
	${INSTALL_DATA} ${WRKSRC}/tcsh.italian.cat ${PREFIX}/share/nls/it_IT.ISO_8859-1/tcsh.cat
	${INSTALL_DATA} ${WRKSRC}/tcsh.ja.cat ${PREFIX}/share/nls/ja_JP.EUC/tcsh.cat
	${INSTALL_DATA} ${WRKSRC}/tcsh.russian.cat ${PREFIX}/share/nls/ru_RU.KOI8-R/tcsh.cat
	${INSTALL_DATA} ${WRKSRC}/tcsh.ukrainian.cat ${PREFIX}/share/nls/uk_UA.KOI8-U/tcsh.cat

.include <bsd.port.mk>
