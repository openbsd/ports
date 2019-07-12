# $OpenBSD: Makefile,v 1.4 2019/07/12 20:49:57 sthen Exp $

COMMENT =		troff to DocBook converter

DISTNAME =		doclifter-2.17

CATEGORIES =		textproc

HOMEPAGE =		http://www.catb.org/~esr/doclifter/

# BSD
PERMIT_PACKAGE =	Yes

MASTER_SITES =		http://www.catb.org/~esr/doclifter/

MODULES =		lang/python
MODPY_BUILDDEP =	No
MODPY_ADJ_FILES =	doclifter manlifter

NO_BUILD =		Yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/doclifter ${WRKSRC}/manlifter \
		${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/doclifter.1 ${WRKSRC}/manlifter.1 \
		${PREFIX}/man/man1

do-test:
	cd ${WRKSRC}/tests && ${MAKE}

.include <bsd.port.mk>
