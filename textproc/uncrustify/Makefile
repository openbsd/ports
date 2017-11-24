# $OpenBSD: Makefile,v 1.18 2017/11/24 12:18:35 jca Exp $

COMMENT =		source code beautifier

DISTNAME =		uncrustify-0.66.1

CATEGORIES =		textproc devel

HOMEPAGE =		http://uncrustify.sourceforge.net/

MAINTAINER =		Remi Pointel <rpointel@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m ${COMPILER_LIBCXX}

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=uncrustify/}

COMPILER =	base-clang ports-clang ports-gcc

MODULES =	devel/cmake

WRKDIST =	${WRKDIR}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/uncrustify/
	${INSTALL_DATA} ${WRKSRC}/etc/*.cfg ${PREFIX}/share/uncrustify/

.include <bsd.port.mk>
