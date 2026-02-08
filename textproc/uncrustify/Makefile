COMMENT =	source code beautifier

V =		0.82.0
DISTNAME =	uncrustify-$V
WRKDIST =	${WRKDIR}/uncrustify-${DISTNAME}

CATEGORIES =	textproc devel

HOMEPAGE =	https://uncrustify.sourceforge.net/

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += c m ${COMPILER_LIBCXX}

SITES =		https://github.com/uncrustify/uncrustify/releases/download/uncrustify-$V/ \
		${SITE_SOURCEFORGE:=uncrustify/}

COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake \
		lang/python

MODPY_RUNDEP =	No

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/uncrustify/
	${INSTALL_DATA} ${WRKSRC}/etc/*.cfg ${PREFIX}/share/uncrustify/

.include <bsd.port.mk>
