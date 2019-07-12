# $OpenBSD: Makefile,v 1.6 2019/07/12 20:46:06 sthen Exp $

COMMENT =		traditional vi and ex

DISTNAME =		ex-050325
PKGNAME =		traditional-vi-20050325
REVISION =		1

CATEGORIES =		editors

HOMEPAGE =		http://ex-vi.sourceforge.net/

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# BSD-style, libuxre is LGPLv2.1
PERMIT_PACKAGE =	Yes

WANTLIB =		c curses

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=ex-vi/}
EXTRACT_SUFX =		.tar.bz2

MAKE_FLAGS =		PREFIX="${PREFIX}"

NO_TEST =		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ex ${PREFIX}/bin/traditional-ex
.for _l in edit vedit vi view
	cd ${PREFIX}/bin && ln traditional-ex ${PREFIX}/bin/traditional-${_l}
.endfor
	${INSTALL_PROGRAM} ${WRKSRC}/exrecover ${PREFIX}/libexec
	${INSTALL_PROGRAM} ${WRKSRC}/expreserve ${PREFIX}/libexec
	${INSTALL_MAN} ${WRKSRC}/vi.1 ${PREFIX}/man/man1/traditional-vi.1
	${INSTALL_MAN} ${WRKSRC}/ex.1 ${PREFIX}/man/man1/traditional-ex.1
	cd ${PREFIX}/man/man1 && ln traditional-ex.1 \
		${PREFIX}/man/man1/traditional-edit.1
	cd ${PREFIX}/man/man1 && ln traditional-vi.1 \
		${PREFIX}/man/man1/traditional-vedit.1
	cd ${PREFIX}/man/man1 && ln traditional-vi.1 \
		${PREFIX}/man/man1/traditional-view.1

.include <bsd.port.mk>
