# $OpenBSD: Makefile,v 1.20 2020/05/15 14:46:37 ajacoutot Exp $

COMMENT =	LastPass command line interface tool

V =		1.3.3
DISTNAME =	lastpass-cli-${V}
REVISION =	1

CATEGORIES =	security

HOMEPAGE =	https://github.com/lastpass/lastpass-cli

MAINTAINER =	Bjorn Ketelaars <bket@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB =	c crypto curl kvm ssl xml2

MASTER_SITES =	${HOMEPAGE}/releases/download/v${V}/

MODULES =	devel/cmake
BUILD_DEPENDS =	shells/bash-completion \
		textproc/asciidoc
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
