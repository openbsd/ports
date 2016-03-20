# $OpenBSD: Makefile,v 1.14 2016/03/20 19:57:09 naddy Exp $

COMMENT=		perl module for formatting plaintext

MODULES=		cpan
PKG_ARCH=		*
DISTNAME =		Text-Autoformat-1.669002
CATEGORIES=		textproc

MAINTAINER=		Sam Smith <s@msmith.net>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=  		textproc/p5-Text-Reform

DOT_FILES=		${FILESDIR}/dot.emacs ${FILESDIR}/dot.vimrc
SAMPLE_DIR=		${PREFIX}/share/examples/p5-Text-Autoformat

post-install:
			${INSTALL_DATA_DIR} ${SAMPLE_DIR}
			${INSTALL_DATA} ${DOT_FILES} ${SAMPLE_DIR}

.include <bsd.port.mk>
