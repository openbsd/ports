# $OpenBSD: Makefile,v 1.1.1.1 2021/11/21 16:09:40 gonzalo Exp $

COMMENT =	C++17 wrapper for Lightning Memory-Mapped Database

VERSION =	1.0.0
DISTNAME =	lmdbxx-${VERSION}

CATEGORIES =	databases

GH_ACCOUNT =	hoytech
GH_PROJECT =	lmdbxx
#GH_TAGNAME =	1.0.0
GH_COMMIT =	f1f00acf5f5045b43d7189c2b23ae5ca103a6faa

HOMEPAGE =	https://github.com/hoytech/lmdbxx

MAINTAINER =	Aisha Tammy <openbsd@aisha.cc>

# Unlicense
PERMIT_PACKAGE =	Yes

COMPILER =	base-clang ports-gcc

NO_BUILD =	Yes

RUN_DEPENDS =	databases/lmdb

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/lmdbxx
	${INSTALL_DATA} ${WRKSRC}/lmdb++.h ${PREFIX}/include
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/lmdbxx/README

do-test:
	cd ${WRKSRC} && \
	rm -rf testdb && \
	mkdir -p testdb && \
	${CXX} ${CXXFLAGS} -std=c++17 -Wall -I${LOCALBASE}/include -I. \
		-o check check.cc ${LDFLAGS} -L${LOCALBASE}/lib -llmdb && \
	./check

.include <bsd.port.mk>
