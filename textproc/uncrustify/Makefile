COMMENT =	source code beautifier

V =		0.82.0
DISTNAME =	uncrustify-$V
WRKDIST =	${WRKDIR}/uncrustify-${DISTNAME}

REVISION =	0

CATEGORIES =	textproc devel

HOMEPAGE =	https://github.com/uncrustify/uncrustify/

MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

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
	mv ${PREFIX}/share/doc/uncrustify/examples \
		${PREFIX}/share/examples/uncrustify

.include <bsd.port.mk>
