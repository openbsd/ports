# $OpenBSD: Makefile,v 1.54 2015/06/10 13:02:34 jasper Exp $

COMMENT=	extended C-shell with many useful features

DISTNAME=	tcsh-6.19.00
CATEGORIES=	shells
HOMEPAGE=	http://www.tcsh.org/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	ftp://ftp.astron.com/pub/tcsh/ \
		ftp://ftp.astron.com/pub/tcsh/old/

WANTLIB=	c termlib

FLAVORS=	static
FLAVOR?=

.if ${FLAVOR} == "static"
CONFIGURE_ENV=	LDFLAGS="${STATIC}"
.endif

CONFIGURE_STYLE=gnu

AUTOCONF_VERSION=2.59
TEST_DEPENDS=${MODGNU_AUTOCONF_DEPENDS}
TEST_FLAGS=	AUTOCONF_VERSION=${AUTOCONF_VERSION}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/tcsh ${PREFIX}/bin/tcsh
	${INSTALL_MAN} ${WRKSRC}/tcsh.man ${PREFIX}/man/man1/tcsh.1
	${INSTALL_DATA} ${WRKSRC}/nls/C.cat ${PREFIX}/share/nls/C/tcsh.cat
	${INSTALL_DATA} ${WRKSRC}/nls/german.cat \
		${PREFIX}/share/nls/de_AT.ISO_8859-1/tcsh.cat
	${INSTALL_DATA} ${WRKSRC}/nls/german.cat \
		${PREFIX}/share/nls/de_CH.ISO_8859-1/tcsh.cat
	${INSTALL_DATA} ${WRKSRC}/nls/german.cat \
		${PREFIX}/share/nls/de_DE.ISO_8859-1/tcsh.cat
	${INSTALL_DATA} ${WRKSRC}/nls/greek.cat \
		${PREFIX}/share/nls/el_GR.ISO_8859-7/tcsh.cat
	${INSTALL_DATA} ${WRKSRC}/nls/spanish.cat \
		${PREFIX}/share/nls/es_ES.ISO_8859-1/tcsh.cat
	${INSTALL_DATA} ${WRKSRC}/nls/et.cat \
		${PREFIX}/share/nls/et_EE.ISO-8859-1/tcsh.cat
	${INSTALL_DATA} ${WRKSRC}/nls/finnish.cat \
		${PREFIX}/share/nls/fi_FI.ISO_8859-1/tcsh.cat
	${INSTALL_DATA} ${WRKSRC}/nls/french.cat \
		${PREFIX}/share/nls/fr_BE.ISO_8859-1/tcsh.cat
	${INSTALL_DATA} ${WRKSRC}/nls/french.cat \
		${PREFIX}/share/nls/fr_CA.ISO_8859-1/tcsh.cat
	${INSTALL_DATA} ${WRKSRC}/nls/french.cat \
		${PREFIX}/share/nls/fr_CH.ISO_8859-1/tcsh.cat
	${INSTALL_DATA} ${WRKSRC}/nls/french.cat \
		${PREFIX}/share/nls/fr_FR.ISO_8859-1/tcsh.cat
	${INSTALL_DATA} ${WRKSRC}/nls/italian.cat \
		${PREFIX}/share/nls/it_CH.ISO_8859-1/tcsh.cat
	${INSTALL_DATA} ${WRKSRC}/nls/italian.cat \
		${PREFIX}/share/nls/it_IT.ISO_8859-1/tcsh.cat
	${INSTALL_DATA} ${WRKSRC}/nls/ja.cat \
		${PREFIX}/share/nls/ja_JP.EUC/tcsh.cat
	${INSTALL_DATA} ${WRKSRC}/nls/pl.cat \
		${PREFIX}/share/nls/pl_PL.ISO_8859-2/tcsh.cat
	${INSTALL_DATA} ${WRKSRC}/nls/russian.cat \
		${PREFIX}/share/nls/ru_RU.KOI8-R/tcsh.cat
	${INSTALL_DATA} ${WRKSRC}/nls/ukrainian.cat \
		${PREFIX}/share/nls/uk_UA.KOI8-U/tcsh.cat

.include <bsd.port.mk>
