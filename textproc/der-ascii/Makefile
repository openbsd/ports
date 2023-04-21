COMMENT =		convert between ASN.1 encodings and text

# go list -m github.com/google/der-ascii@${COMMITID}
MODGO_MODNAME =		github.com/google/der-ascii
MODGO_VERSION =		v0.0.0-20230412183205-c8bb0d34a6e5
REVISION =		0

DISTNAME =		der-ascii-20230412

CATEGORIES =		textproc sysutils

HOMEPAGE =		https://github.com/google/der-ascii

MAINTAINER =		Theo Buehler <tb@openbsd.org>

# Apache 2
PERMIT_PACKAGE =	Yes

MODULES =		lang/go

ALL_TARGET =		${MODGO_MODNAME}/...

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/der-ascii
	${INSTALL_DATA} ${WRKSRC}/language.txt ${PREFIX}/share/doc/der-ascii

.include <bsd.port.mk>
