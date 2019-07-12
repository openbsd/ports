# $OpenBSD: Makefile,v 1.2 2019/07/12 20:43:49 sthen Exp $

COMMENT =	convert Mac font formats to/from pfb, ttf, otf and bdf files

DISTNAME =	fondu_src-060102
PKGNAME =	${DISTNAME:S/_src//}
EXTRACT_SUFX =	.tgz

CATEGORIES =	converters

HOMEPAGE =	http://fondu.sourceforge.net/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += c m

MASTER_SITES =	http://fondu.sourceforge.net/

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
