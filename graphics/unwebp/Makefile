# $OpenBSD: Makefile,v 1.4 2020/06/15 19:12:48 espie Exp $

COMMENT =	convert webp into gif/png
CATEGORIES = 	graphics converters
MAINTAINER = 	Marc Espie <espie@openbsd.org>

GH_PROJECT = 	unwebp
GH_TAGNAME = 	2.2
GH_ACCOUNT = 	marcespie

# BSD licence
PERMIT_PACKAGE= Yes
NO_TEST = 	Yes
NO_BUILD =	Yes

do-install:
	${INSTALL_SCRIPT} ${WRKDIST}/unwebp ${PREFIX}/bin
	${INSTALL_MAN} ${WRKDIST}/unwebp.1 ${PREFIX}/man/man1

RUN_DEPENDS =	graphics/libwebp \
		graphics/GraphicsMagick

.include <bsd.port.mk>
