# $OpenBSD: Makefile,v 1.9 2006/08/01 23:39:08 espie Exp $

COMMENT=		"Ruby interface to ncurses"

VERSION=		0.8
DISTNAME=		ncurses-ruby-${VERSION}
PKGNAME=		ruby-ncurses-${VERSION}p1
CATEGORIES=		devel

HOMEPAGE=		http://ncurses-ruby.berlios.de/

MAINTAINER=		Jim Geovedi <jim@corebsd.or.id>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m ncurses panel

MASTER_SITES=		${MASTER_SITE_BERLIOS:=ncurses-ruby/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		lang/ruby

LIB_DEPENDS=		ruby.>=1.84::lang/ruby

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
