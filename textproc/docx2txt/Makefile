# $OpenBSD: Makefile,v 1.5 2019/07/12 20:49:57 sthen Exp $

COMMENT =		command line converter from Microsoft docx to ASCII text
DISTNAME =		docx2txt-1.4
CATEGORIES =		textproc
HOMEPAGE =		http://docx2txt.sourceforge.net/
REVISION =		0

# GPLv3+
PERMIT_PACKAGE =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=docx2txt/}
EXTRACT_SUFX =		.tgz

RUN_DEPENDS = 		archivers/unzip
NO_BUILD =		Yes
NO_TEST =		Yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/docx2txt.pl ${PREFIX}/bin/docx2txt
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/docx2txt
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/docx2txt/README
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/docx2txt
	${INSTALL_DATA} ${WRKSRC}/docx2txt.config \
		${PREFIX}/share/examples/docx2txt/docx2txt.config

.include <bsd.port.mk>
