# $OpenBSD: Makefile,v 1.5 2020/07/12 15:27:40 fcambus Exp $

COMMENT =	BDF to SFD converter

V =		1.1.3
DISTNAME =	bdf2sfd-$V

CATEGORIES =	converters

HOMEPAGE =	https://github.com/fcambus/bdf2sfd

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB +=	c

MASTER_SITES =	https://github.com/fcambus/bdf2sfd/releases/download/$V/

MODULES =	devel/cmake

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bdf2sfd
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/bdf2sfd

.include <bsd.port.mk>
