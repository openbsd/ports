# $OpenBSD: Makefile,v 1.15 2019/03/10 21:30:10 afresh1 Exp $

COMMENT=		automatic text wrapping and reformatting

MODULES=		cpan
PKG_ARCH=		*
DISTNAME=		Text-Autoformat-1.74
CATEGORIES=		textproc

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		textproc/p5-Text-Reform

DOT_FILES=		${FILESDIR}/dot.emacs ${FILESDIR}/dot.vimrc
SAMPLE_DIR=		${PREFIX}/share/examples/p5-Text-Autoformat

post-install:
			${INSTALL_DATA_DIR} ${SAMPLE_DIR}
			${INSTALL_DATA} ${DOT_FILES} ${SAMPLE_DIR}

.include <bsd.port.mk>
