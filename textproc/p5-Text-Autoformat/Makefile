# $OpenBSD: Makefile,v 1.2 2003/05/15 06:19:41 naddy Exp $

COMMENT=		"perl module to formating plaintext"

DISTNAME=		Text-Autoformat-1.11
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		textproc perl5

MAINTAINER=		Han Boetes <han@linux-mandrake.com>

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
SAMPLE_DIR=		${PREFIX}/share/examples/${DISTNAME}

post-install:
			${INSTALL_DATA_DIR} ${SAMPLE_DIR}
			${INSTALL_DATA} ${DOT_FILES} ${SAMPLE_DIR}

.include <bsd.port.mk>
