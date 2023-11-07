COMMENT =	convert Mac font formats to/from pfb, ttf, otf and bdf files

DISTNAME =	fondu_src-060102
PKGNAME =	${DISTNAME:S/_src//}
EXTRACT_SUFX =	.tgz
REVISION =	1

CATEGORIES =	converters

HOMEPAGE =	https://fondu.sourceforge.net/

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += c m

SITES =		https://fondu.sourceforge.net/

WRKDIST =	${WRKDIR}/${PKGNAME}

CONFIGURE_STYLE = gnu

CONFIGURE_ARGS = --bindir=${PREFIX}/bin

MAKE_FLAGS =	CFLAGS="${CFLAGS}"

NO_TEST =	Yes

post-install:
.for f in dfont2res fondu frombin lumper showfond tobin ufond
	${INSTALL_MAN} ${WRKSRC}/${f}.1 ${PREFIX}/man/man1
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/fondu
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/fondu

.include <bsd.port.mk>
