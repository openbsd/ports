# $OpenBSD: Makefile,v 1.11 2020/11/30 15:14:04 fcambus Exp $

COMMENT =	name-indexed data processing tool

GH_ACCOUNT =	johnkerl
GH_PROJECT =	miller
GH_TAGNAME =	v5.10.0

CATEGORIES =	textproc

HOMEPAGE =	https://johnkerl.org/miller/doc/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB +=	c m

CONFIGURE_STYLE = gnu

post-install:
	${INSTALL_DATA} ${WRKSRC}/docs/mlr.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
