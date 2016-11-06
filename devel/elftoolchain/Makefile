# $OpenBSD: Makefile,v 1.3 2016/11/06 01:32:32 jca Exp $

COMMENT =		BSD-licensed implementation of compilation tools

DISTNAME =		elftoolchain-0.7.1
REVISION =		1
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
