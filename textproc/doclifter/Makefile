# $OpenBSD: Makefile,v 1.2 2015/06/02 17:02:09 ajacoutot Exp $

COMMENT =		troff to DocBook converter

DISTNAME =		doclifter-2.15

CATEGORIES =		textproc

HOMEPAGE =		http://www.catb.org/~esr/doclifter/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://www.catb.org/~esr/doclifter/

MODULES =		lang/python
MODPY_BUILDDEP =	No
MODPY_ADJ_FILES =	doclifter manlifter

NO_BUILD =		Yes

do-test:
	cd ${WRKSRC}/tests && ${MAKE}

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/doclifter ${WRKSRC}/manlifter \
		${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/doclifter.1 ${WRKSRC}/manlifter.1 \
		${PREFIX}/man/man1

.include <bsd.port.mk>
