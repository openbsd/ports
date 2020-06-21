# $OpenBSD: Makefile,v 1.25 2020/06/21 07:17:08 rpointel Exp $

COMMENT =		source code beautifier

DISTNAME =		uncrustify-0.71.0

CATEGORIES =		textproc devel

HOMEPAGE =		http://uncrustify.sourceforge.net/

MAINTAINER =		Remi Pointel <rpointel@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += c m ${COMPILER_LIBCXX}

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=uncrustify/}

COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake \
		lang/python

MODPY_RUNDEP =	No

WRKDIST =	${WRKDIR}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/uncrustify/
	${INSTALL_DATA} ${WRKSRC}/etc/*.cfg ${PREFIX}/share/uncrustify/

.include <bsd.port.mk>
