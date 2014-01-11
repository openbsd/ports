# $OpenBSD: Makefile,v 1.22 2014/01/11 11:22:43 espie Exp $

COMMENT=	tools and library routines for working with GIF images

DISTNAME=	libungif-4.1.4
REVISION =	2
SHARED_LIBS=	gif	5.4 \
		ungif	5.4
CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=giflib/}

HOMEPAGE=	http://sourceforge.net/projects/libungif/

# MIT
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c m

CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.59
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--without-x

DOCS=			README UNCOMPRESSED_GIF
HTMLDOCS= 		*.html *.txt *.png
DOCSDIR=		${PREFIX}/share/doc/libungif

MAKE_ENV+=		CFLAGS="${CFLAGS}"

post-install:
	@cd ${PREFIX}/lib; \
	ln -s libungif.a libgif.a && \
	ln -s libungif.so.${LIBungif_VERSION} libgif.so.${LIBgif_VERSION} && \
	sed -e s#libungif#libgif#g libungif.la > libgif.la && \
	chown ${LIBOWN}:${LIBGRP} libgif.la && \
	chmod 755 libgif.la
	${INSTALL_DATA_DIR} ${DOCSDIR}/html
.for d in ${DOCS}
	${INSTALL_DATA} ${WRKSRC}/$d ${DOCSDIR}
.endfor
.for h in ${HTMLDOCS}
	${INSTALL_DATA} ${WRKSRC}/doc/$h ${DOCSDIR}/html
.endfor

.include <bsd.port.mk>
