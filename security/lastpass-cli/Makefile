# $OpenBSD: Makefile,v 1.14 2018/03/16 17:15:46 bket Exp $

COMMENT =	LastPass command line interface tool

V =		1.3.0
DISTNAME =	lastpass-cli-${V}

CATEGORIES =	security

HOMEPAGE =	https://github.com/lastpass/lastpass-cli

MAINTAINER =	Bjorn Ketelaars <bjorn.ketelaars@hydroxide.nl>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c crypto curl kvm ssl xml2

MASTER_SITES =	https://github.com/lastpass/lastpass-cli/releases/download/v${V}/

MODULES =	devel/cmake
BUILD_DEPENDS =	textproc/asciidoc
LIB_DEPENDS =	net/curl \
		textproc/libxml
TEST_DEPENDS =	${BUILD_DEPENDS} \
		shells/bash

INSTALL_TARGET =	install install-doc

do-test:
	cd ${WRKSRC}/test && sed -i 's,#!/bin/bash,#!${LOCALBASE}/bin/bash,' *
	cd ${WRKSRC} && make test

.include <bsd.port.mk>
