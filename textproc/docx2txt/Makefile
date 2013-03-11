# $OpenBSD: Makefile,v 1.2 2013/03/11 11:42:41 espie Exp $

COMMENT =		command line converter from Microsoft docx to ASCII text
DISTNAME =		docx2txt-1.0
CATEGORIES =		textproc
HOMEPAGE =		http://docx2txt.sourceforge.net/
MAINTAINER =		Ingo Schwarze <schwarze@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=docx2txt/}
EXTRACT_SUFX =		.tgz

RUN_DEPENDS = 		archivers/unzip
NO_BUILD =		Yes
NO_TEST =		Yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/docx2txt.pl ${PREFIX}/bin/docx2txt

.include <bsd.port.mk>
