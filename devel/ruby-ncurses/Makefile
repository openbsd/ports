# $OpenBSD: Makefile,v 1.22 2009/08/10 15:27:13 msf Exp $

SHARED_ONLY=		Yes

COMMENT=		Ruby interface to ncurses

VERSION=		1.1
DISTNAME=		ncurses-ruby-${VERSION}
PKGNAME=		ruby-ncurses-${VERSION}p4
CATEGORIES=		devel

HOMEPAGE=		http://ncurses-ruby.berlios.de/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c form m ncurses panel

MASTER_SITES=		${MASTER_SITE_BERLIOS:=ncurses-ruby/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		lang/ruby

LIB_DEPENDS=		${MODRUBY_LIB_DEPENDS}

CONFIGURE_STYLE=	ruby extconf

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
