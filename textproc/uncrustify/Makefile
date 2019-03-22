# $OpenBSD: Makefile,v 1.21 2019/03/22 18:06:57 ajacoutot Exp $

COMMENT =		source code beautifier

DISTNAME =		uncrustify-0.68.1

CATEGORIES =		textproc devel

HOMEPAGE =		http://uncrustify.sourceforge.net/

MAINTAINER =		Remi Pointel <rpointel@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m ${COMPILER_LIBCXX}

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=uncrustify/}

COMPILER =	base-clang ports-clang ports-gcc

MODULES =	devel/cmake \
		lang/python

MODPY_RUNDEP =	No

WRKDIST =	${WRKDIR}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/uncrustify/
	${INSTALL_DATA} ${WRKSRC}/etc/*.cfg ${PREFIX}/share/uncrustify/

.include <bsd.port.mk>
