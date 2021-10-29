# $OpenBSD: Makefile,v 1.1.1.1 2021/10/29 18:10:29 thfr Exp $

COMMENT =	filter for csv data containing delimiters and newlines

DISTNAME =	csvquote-0.0.20180328

GH_ACCOUNT =	dbro
GH_PROJECT =	csvquote
GH_COMMIT =	baf37fa4cccc656282551db4ea7ce4ec6b9c318e

CATEGORIES =	textproc

# MIT
PERMIT_PACKAGE = Yes

WANTLIB = c

NO_TEST =	Yes

FAKE_FLAGS =	BINDIR=${DESTDIR}${PREFIX}/bin

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/csvquote
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/csvquote

.include <bsd.port.mk>
