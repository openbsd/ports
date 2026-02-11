COMMENT =	simple console gopher client
DISTNAME =	sacc-1.06
CATEGORIES =	net
REVISION =	0

HOMEPAGE =	gopher://bitreich.org/1/scm/sacc

# ISC
PERMIT_PACKAGE =	Yes

WANTLIB += c curses tls

SITES =		ftp://bitreich.org/releases/sacc/

# To open HTML and other links sacc doesn't understand.
RUN_DEPENDS =	devel/xdg-utils

NO_TEST =	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/sacc ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/sacc.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
