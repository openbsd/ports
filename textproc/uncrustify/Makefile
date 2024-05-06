COMMENT =		source code beautifier

DISTNAME =		uncrustify-0.78.1
REVISION =		0

CATEGORIES =		textproc devel

HOMEPAGE =		https://uncrustify.sourceforge.net/

MAINTAINER =		Remi Pointel <rpointel@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += c m ${COMPILER_LIBCXX}

SITES =		${SITE_SOURCEFORGE:=uncrustify/}

COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake \
		lang/python

MODPY_RUNDEP =	No

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/uncrustify/
	${INSTALL_DATA} ${WRKSRC}/etc/*.cfg ${PREFIX}/share/uncrustify/

.include <bsd.port.mk>
