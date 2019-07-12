# $OpenBSD: Makefile,v 1.32 2019/07/12 20:48:59 sthen Exp $

COMMENT =	command line todo list manager

VERSION =	2.5.1
DISTNAME =	task-${VERSION}
PKGNAME =	taskwarrior-${VERSION}
CATEGORIES =	productivity
REVISION =	3

HOMEPAGE =	https://www.taskwarrior.org/

MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>

MASTER_SITES =	${HOMEPAGE}download/

# MIT
PERMIT_PACKAGE =		Yes

# Needs C++11; linker issues with clang
COMPILER =		base-clang ports-gcc
MODULES =		devel/cmake \
			lang/lua \
			lang/python
MODLUA_SA =		Yes
MODPY_RUNDEP =		No

WANTLIB += c gnutls m pthread ${COMPILER_LIBCXX}

LIB_DEPENDS =		security/gnutls

CONFIGURE_STYLE =	cmake

CONFIGURE_ARGS +=	-DTASK_DOCDIR=share/taskwarrior \
			-DTASK_MAN1DIR=man/man1 \
			-DTASK_MAN5DIR=man/man5 \
			-Ddoc_FILES="README.md"

CONFIGURE_ENV +=	CFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

NO_TEST =		Yes

pre-configure:
	sed -i 's,share/doc/task/,share/taskwarrior/,g' \
		${WRKSRC}/doc/man/task-color.5.in \
		${WRKSRC}/doc/man/taskrc.5.in \
		${WRKSRC}/src/Config.cpp
	sed -i 's,share/doc/task-VERSION/,share/taskwarrior/,g' \
		${WRKSRC}/scripts/vim/README

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
	    ${PREFIX}/share/taskwarrior/scripts/add-ons

.include <bsd.port.mk>
