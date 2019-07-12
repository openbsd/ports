# $OpenBSD: Makefile,v 1.3 2019/07/12 20:44:04 sthen Exp $

COMMENT =		Bash unit testing framework based on xUnit principles

DISTNAME =		bashunit-20140327

GH_ACCOUNT =		djui
GH_PROJECT =		bashunit
GH_COMMIT =		deacbc814120cd086df760f135587eaa86ee4e3a
REVISION =		0

CATEGORIES =		devel

# BSD
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =		sysutils/ggrep \
			shells/bash

NO_BUILD =		Yes
NO_TEST =		Yes

post-extract:
	sed -i	-e 's,^#!/usr/bin/env ,#!${LOCALBASE}/bin/,' \
		-e 's,grep,ggrep,' \
		${WRKSRC}/bashunit.bash
	sed -i	-e 's,^#!/bin,#!${LOCALBASE}/bin,' \
		${WRKSRC}/test_example

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/bashunit.bash ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bashunit \
		${PREFIX}/share/examples/bashunit
	${INSTALL_DATA} ${WRKSRC}/{LICENSE,README.md} \
		${PREFIX}/share/doc/bashunit
	${INSTALL_DATA} ${WRKSRC}/test_example \
		${PREFIX}/share/examples/bashunit

.include <bsd.port.mk>
