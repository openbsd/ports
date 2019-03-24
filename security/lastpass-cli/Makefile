# $OpenBSD: Makefile,v 1.16 2019/03/24 16:27:12 bket Exp $

COMMENT =	LastPass command line interface tool

GH_ACCOUNT =	lastpass
GH_PROJECT =	lastpass-cli
GH_TAGNAME =	v1.3.2

CATEGORIES =	security

MAINTAINER =	Bjorn Ketelaars <bket@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c crypto curl kvm ssl xml2

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
