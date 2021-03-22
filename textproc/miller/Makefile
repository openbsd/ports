# $OpenBSD: Makefile,v 1.13 2021/03/22 09:07:09 fcambus Exp $

COMMENT =	name-indexed data processing tool

GH_ACCOUNT =	johnkerl
GH_PROJECT =	miller
GH_TAGNAME =	v5.10.1

CATEGORIES =	textproc

HOMEPAGE =	https://johnkerl.org/miller/doc/

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB +=	c m

CONFIGURE_STYLE = gnu

post-install:
	${INSTALL_DATA} ${WRKSRC}/docs/mlr.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
