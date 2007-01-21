# $OpenBSD: Makefile,v 1.6 2007/01/21 21:46:21 simon Exp $

COMMENT=		"perl module for formatting plaintext"

MODULES=		cpan
DISTNAME=		Text-Autoformat-1.12
PKGNAME=		p5-${DISTNAME}p0
CATEGORIES=		textproc

MAINTAINER=		Sam Smith <s@msmith.net>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=  		:p5-Text-Reform-*:textproc/p5-Text-Reform

DOT_FILES=		${FILESDIR}/dot.emacs ${FILESDIR}/dot.vimrc
SAMPLE_DIR=		${PREFIX}/share/examples/p5-Text-Autoformat

post-install:
			${INSTALL_DATA_DIR} ${SAMPLE_DIR}
			${INSTALL_DATA} ${DOT_FILES} ${SAMPLE_DIR}

.include <bsd.port.mk>
