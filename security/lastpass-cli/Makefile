COMMENT =	LastPass command line interface tool

V =		1.5.0
DISTNAME =	lastpass-cli-${V}

CATEGORIES =	security

HOMEPAGE =	https://github.com/lastpass/lastpass-cli

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB =	c crypto curl kvm ssl xml2

SITES =		${HOMEPAGE}/releases/download/v${V}/

MODULES =	devel/cmake

BUILD_DEPENDS =	shells/bash-completion \
		textproc/asciidoc
LIB_DEPENDS =	net/curl \
		textproc/libxml
TEST_DEPENDS =	${BUILD_DEPENDS} \
		shells/bash

do-test:
	sed -i 's,#!/bin/bash,#!${LOCALBASE}/bin/bash,' ${WRKSRC}/test/*
	chmod +x ${WRKSRC}/test/tests ${WRKSRC}/test/*.sh
	cd ${WRKSRC} && make test

.include <bsd.port.mk>
