# $OpenBSD: Makefile,v 1.4 2004/01/30 17:04:48 lebel Exp $

COMMENT=		"perl module for formatting plaintext"

DISTNAME=		Text-Autoformat-1.12
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		textproc perl5


# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=Text/}
HOMEPAGE=		http://search.cpan.org/author/DCONWAY/${DISTNAME}/lib/Text/Autoformat.pm

BUILD_DEPENDS=    	${RUN_DEPENDS}
RUN_DEPENDS=  		:p5-Text-Reform-*:textproc/p5-Text-Reform

CONFIGURE_STYLE=	perl

DOT_FILES=		${FILESDIR}/dot.emacs ${FILESDIR}/dot.vimrc
SAMPLE_DIR=		${PREFIX}/share/examples/p5-Text-Autoformat

post-install:
			${INSTALL_DATA_DIR} ${SAMPLE_DIR}
			${INSTALL_DATA} ${DOT_FILES} ${SAMPLE_DIR}

.include <bsd.port.mk>
