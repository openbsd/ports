# $OpenBSD: Makefile,v 1.9 2017/02/08 10:49:53 sthen Exp $

COMMENT =	LastPass command line interface tool

GH_ACCOUNT =	lastpass
GH_PROJECT =	lastpass-cli
GH_TAGNAME =	v1.1.2
CATEGORIES =	security

MAINTAINER =	Bjorn Ketelaars <bjorn.ketelaars@hydroxide.nl>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c curl crypto kvm ssl xml2

MODULES =	devel/cmake

BUILD_DEPENDS=	textproc/asciidoc
LIB_DEPENDS =	net/curl \
		textproc/libxml

NO_TEST =	Yes
ALL_TARGET =	all doc-man

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/lpass ${PREFIX}/bin
	${INSTALL_MAN} ${WRKBUILD}/lpass.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
