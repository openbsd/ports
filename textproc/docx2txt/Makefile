# $OpenBSD: Makefile,v 1.1.1.1 2011/04/05 15:09:50 schwarze Exp $

COMMENT =		command line converter from Microsoft docx to ASCII text
DISTNAME =		docx2txt-1.0
CATEGORIES =		textproc
HOMEPAGE =		http://docx2txt.sourceforge.net/
MAINTAINER =		Ingo Schwarze <schwarze@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=docx2txt/}
EXTRACT_SUFX =		.tgz

RUN_DEPENDS = 		archivers/unzip
NO_BUILD =		Yes
NO_REGRESS =		Yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/docx2txt.pl ${PREFIX}/bin/docx2txt

.include <bsd.port.mk>
