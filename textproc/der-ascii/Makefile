COMMENT =		convert between ASN.1 encodings and text

V =			0.7.0
MODGO_MODNAME =		github.com/google/der-ascii
MODGO_VERSION =		v$V

DISTNAME =		der-ascii-$V
EPOCH =			0

CATEGORIES =		textproc sysutils

HOMEPAGE =		https://github.com/google/der-ascii

MAINTAINER =		Theo Buehler <tb@openbsd.org>

# Apache 2
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

MODULES =		lang/go

ALL_TARGET =		${MODGO_MODNAME}/...

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/der-ascii
	${INSTALL_DATA} ${WRKSRC}/language.txt ${PREFIX}/share/doc/der-ascii

.include <bsd.port.mk>
