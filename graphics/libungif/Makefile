# $OpenBSD: Makefile,v 1.11 2005/11/09 21:17:20 brad Exp $

COMMENT=	"tools and library routines for working with GIF images"

DISTNAME=	libungif-4.1.4
CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=libungif/}

HOMEPAGE=	http://sourceforge.net/projects/libungif/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m

USE_LIBTOOL=	Yes
CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.59
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --without-x

DOCS=	README UNCOMPRESSED_GIF
HTMLDOCS= *.html *.txt *.png
DOCSDIR= ${PREFIX}/share/doc/libungif

post-install:
	@cd ${PREFIX}/lib; \
	for f in libungif.a libungif.so.5.4; do \
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
