# $OpenBSD: Makefile,v 1.1.1.1 2015/09/02 16:10:06 sthen Exp $

COMMENT =	lastPass command line interface tool

GH_ACCOUNT =	lastpass
GH_PROJECT =	lastpass-cli
GH_TAGNAME =	v0.6.0
DISTNAME =	${GH_PROJECT}-${GH_TAGNAME:S/v//}
CATEGORIES =	security

MAINTAINER =	Bjorn Ketelaars <bjorn.ketelaars@hydroxide.nl>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c curl crypto kvm pthread ssl xml2

BUILD_DEPENDS=	textproc/asciidoc
LIB_DEPENDS =	net/curl \
		textproc/libxml

USE_GMAKE =	yes

ALL_TARGET =	all doc-man

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/lpass ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/lpass.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
