# $OpenBSD: Makefile,v 1.3 2022/03/04 21:42:00 kmos Exp $

COMMENT =	filter for csv data containing delimiters and newlines

GH_ACCOUNT =	dbro
GH_PROJECT =	csvquote
GH_TAGNAME =	v0.1.5

CATEGORIES =	textproc

# MIT
PERMIT_PACKAGE = Yes

WANTLIB = c

MAKE_FLAGS =	CFLAGS="${CFLAGS}" CC="${CC}"
FAKE_FLAGS =	BINDIR=${DESTDIR}${PREFIX}/bin

# tests are silent if successful

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/csvquote
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/csvquote

.include <bsd.port.arch.mk>
.if !${PROPERTIES:Mclang}
CFLAGS +=	-std=gnu99
.endif

.include <bsd.port.mk>
