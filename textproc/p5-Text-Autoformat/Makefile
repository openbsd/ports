# $OpenBSD: Makefile,v 1.3 2003/06/18 11:47:13 naddy Exp $

COMMENT=		"perl module for formatting plaintext"

DISTNAME=		Text-Autoformat-1.12
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		textproc perl5

MAINTAINER=		Han Boetes <han@linux-mandrake.com>

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
