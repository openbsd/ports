# $OpenBSD: Makefile,v 1.5 2006/01/22 23:21:46 sturm Exp $

COMMENT=		"Ruby interface to ncurses"

VERSION=		0.8
DISTNAME=		ncurses-ruby-${VERSION}
PKGNAME=		ruby-ncurses-${VERSION}p0
CATEGORIES=		devel

HOMEPAGE=		http://ncurses-ruby.berlios.de/

MAINTAINER=		Jim Geovedi <jim@corebsd.or.id>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m ncurses panel

MASTER_SITES=		http://download.berlios.de/ncurses-ruby/
EXTRACT_SUFX=		.tar.bz2

MODULES=		lang/ruby

CONFIGURE_STYLE=	simple

INSTALL_TARGET=		site-install

NO_REGRESS=		Yes

DOC_DIR=		${MODRUBY_DOCDIR}/ruby-ncurses
SAMPLE_DIR=		${MODRUBY_EXAMPLEDIR}/ruby-ncurses

post-install:
	${INSTALL_DATA_DIR} ${DOC_DIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOC_DIR}
	${INSTALL_DATA_DIR} ${SAMPLE_DIR}
	${INSTALL_DATA} ${WRKSRC}/examples/* ${SAMPLE_DIR}
		
.include <bsd.port.mk>
