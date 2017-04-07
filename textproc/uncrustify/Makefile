# $OpenBSD: Makefile,v 1.10 2017/04/07 06:04:45 rpointel Exp $

COMMENT =		source code beautifier

DISTNAME =		uncrustify-0.64

CATEGORIES =		textproc devel

HOMEPAGE =		http://uncrustify.sourceforge.net/

MAINTAINER =		Remi Pointel <rpointel@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m stdc++

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=uncrustify/}

WRKDIST =	${WRKDIR}

MODULES =	devel/cmake

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/uncrustify/
	${INSTALL_DATA} ${WRKSRC}/etc/*.cfg ${PREFIX}/share/uncrustify/

.include <bsd.port.mk>
