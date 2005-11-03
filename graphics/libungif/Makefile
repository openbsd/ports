# $OpenBSD: Makefile,v 1.10 2005/11/03 18:28:55 naddy Exp $

COMMENT=	"tools and library routines for working with GIF images"

DISTNAME=	libungif-4.1.0b1
CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=libungif/}
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://sourceforge.net/projects/libungif/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m

AUTOCONF_VERSION=2.13
CONFIGURE_STYLE= autoconf
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --without-x

PATCH_LIST=	${PORTSDIR}/infrastructure/patches/patch-lt1.3.3-ltconfig \
		${PORTSDIR}/infrastructure/patches/patch-lt1.3.3-ltmain_sh \
		patch-*

DOCS=	COPYING UNCOMPRESSED_GIF
HTMLDOCS= *.html *.txt *.png
DOCSDIR= ${PREFIX}/share/doc/libungif

post-install:
	@cd ${PREFIX}/lib; \
	for f in libungif.a libungif.so.5.0; do \
		g=`echo $$f | sed -e s#libungif#libgif#g`; \
		ln -sf $$f $$g; \
	done && \
	sed -e s#libungif#libgif#g libungif.la > libgif.la && \
	chown ${LIBOWN}:${LIBGRP} libgif.la && \
	chmod 755 libgif.la
	${INSTALL_DATA_DIR} ${DOCSDIR}
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${DOCSDIR}
	${INSTALL_DATA_DIR} ${DOCSDIR}/html
	cd ${WRKSRC}/doc; ${INSTALL_DATA} ${HTMLDOCS} ${DOCSDIR}/html

.include <bsd.port.mk>
