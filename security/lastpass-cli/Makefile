# $OpenBSD: Makefile,v 1.19 2019/07/12 20:49:04 sthen Exp $

COMMENT =	LastPass command line interface tool

V =		1.3.3
DISTNAME =	lastpass-cli-${V}
REVISION =	0

CATEGORIES =	security

HOMEPAGE =	https://github.com/lastpass/lastpass-cli

MAINTAINER =	Bjorn Ketelaars <bket@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB =	c crypto curl kvm ssl xml2

MASTER_SITES =	${HOMEPAGE}/releases/download/v${V}/

MODULES =	devel/cmake
BUILD_DEPENDS =	textproc/asciidoc
LIB_DEPENDS =	net/curl \
		textproc/libxml
TEST_DEPENDS =	${BUILD_DEPENDS} \
		shells/bash

INSTALL_TARGET =	install install-doc

do-extract:
	mkdir ${WRKSRC} && \
		tar -C ${WRKSRC} -zxf ${FULLDISTDIR}/${DISTNAME}.tar.gz

do-test:
	cd ${WRKSRC}/test && sed -i 's,#!/bin/bash,#!${LOCALBASE}/bin/bash,' *
	cd ${WRKSRC} && make test

.include <bsd.port.mk>
