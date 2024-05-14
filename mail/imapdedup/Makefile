COMMENT =		IMAP message de-duplicator

V =			b232a13bf923292dccb0dd22a78b74e20950daf3

PKGNAME =		imapdedup-0.0.20240131

DIST_TUPLE +=		github quentinsf IMAPdedup ${V} .

CATEGORIES =		mail

HOMEPAGE =		https://quentinsf.com/software/imapdedup

# GPLv2+
PERMIT_PACKAGE=		Yes

MODULES =		lang/python
MODPY_ADJ_FILES =	imapdedup.py
CONFIGURE_STYLE =	none

RUN_DEPENDS=		security/py-keyring${MODPY_FLAVOR}

NO_BUILD =		Yes
NO_TEST =		Yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/imapdedup.py ${PREFIX}/bin/imapdedup
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/imapdedup

.include <bsd.port.mk>
