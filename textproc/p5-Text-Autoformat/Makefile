# $OpenBSD: Makefile,v 1.12 2013/03/11 11:42:44 espie Exp $

COMMENT=		perl module for formatting plaintext

MODULES=		cpan
DISTNAME=		Text-Autoformat-1.668001
REVISION=		0
CATEGORIES=		textproc
USE_GROFF =		Yes

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
