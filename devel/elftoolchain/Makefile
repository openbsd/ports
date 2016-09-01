# $OpenBSD: Makefile,v 1.2 2016/09/01 11:13:12 jasper Exp $

COMMENT =		BSD-licensed implementation of compilation tools

DISTNAME =		elftoolchain-0.7.1
REVISION =		0
CATEGORIES =		devel

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=elftoolchain/}
EXTRACT_SUFX =		.tgz

LIBDIR =		${PREFIX}/lib/elftoolchain
INCSDIR =		${PREFIX}/include/elftoolchain
MAKE_FLAGS +=		MANDIR=${PREFIX}/man/man \
			BINDIR=${PREFIX}/bin \
			LIBDIR=${LIBDIR} \
			INCSDIR=${INCSDIR}

# Only build a subset of the libraries/tools
MAKE_FLAGS +=		WITH_TOOLS=No

NO_TEST =		Yes

pre-install:
	${INSTALL_DATA_DIR} ${LIBDIR} ${INCSDIR}

.include <bsd.port.mk>
