# $OpenBSD: Makefile,v 1.29 2011/01/15 01:09:43 naddy Exp $

COMMENT=		Ruby interface to ncurses

VERSION=		1.1
DISTNAME=		ncurses-ruby-${VERSION}
PKGNAME=		ncurses-${VERSION}
REVISION=		10
CATEGORIES=		devel

HOMEPAGE=		http://ncurses-ruby.berlios.de/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		form ncurses panel

MASTER_SITES=		${MASTER_SITE_BERLIOS:=ncurses-ruby/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby extconf

INSTALL_TARGET=		site-install

NO_REGRESS=		Yes

DOC_DIR=		${MODRUBY_DOCDIR}/ncurses
SAMPLE_DIR=		${MODRUBY_EXAMPLEDIR}/ncurses

post-install:
	${INSTALL_DATA_DIR} ${DOC_DIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOC_DIR}
	${INSTALL_DATA_DIR} ${SAMPLE_DIR}
	${INSTALL_DATA} ${WRKSRC}/examples/* ${SAMPLE_DIR}
		
.include <bsd.port.mk>
