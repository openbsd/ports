# $OpenBSD: Makefile,v 1.17 2019/03/21 10:27:55 sthen Exp $

COMMENT=		automatic text wrapping and reformatting

MODULES=		cpan
PKG_ARCH=		*
DISTNAME=		Text-Autoformat-1.74
CATEGORIES=		textproc

EPOCH=			0
REVISION=		0

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		textproc/p5-Text-Reform

DOT_FILES=		${FILESDIR}/dot.emacs ${FILESDIR}/dot.vimrc
SAMPLE_DIR=		${PREFIX}/share/examples/p5-Text-Autoformat

post-install:
			${INSTALL_DATA_DIR} ${SAMPLE_DIR}
			${INSTALL_DATA} ${DOT_FILES} ${SAMPLE_DIR}

.include <bsd.port.mk>
