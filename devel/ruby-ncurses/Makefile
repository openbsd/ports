# $OpenBSD: Makefile,v 1.1.1.1 2002/12/10 16:01:02 couderc Exp $

COMMENT=		"Ruby interface to ncurses"

VERSION=		0.6
DISTNAME=		ncurses-ruby-${VERSION}
PKGNAME=		ruby-ncurses-${VERSION}
CATEGORIES=		devel

HOMEPAGE=		http://ncurses-ruby.berlios.de/

MAINTAINER=		Jim Geovedi <jim@corebsd.or.id>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://download.berlios.de/ncurses-ruby/
EXTRACT_SUFX=		.tar.bz2

MODULES=		ruby

CONFIGURE_STYLE=	simple

INSTALL_TARGET=		site-install

NO_REGRESS=		Yes

SUBST_VARS=		OPSYS_VER

DOC_DIR=		${MODRUBY_DOCDIR}/ruby-ncurses
SAMPLE_DIR=		${MODRUBY_EXAMPLEDIR}/ruby-ncurses

post-extract:
	@mkdir ${WRKSRC}/lib && mv ${WRKSRC}/ncurses.rb ${WRKSRC}/lib/

post-install:
	${INSTALL_DATA_DIR} ${DOC_DIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOC_DIR}
	${INSTALL_DATA_DIR} ${SAMPLE_DIR}
	${INSTALL_DATA} ${WRKSRC}/examples/* ${SAMPLE_DIR}
		
.include <bsd.port.mk>
