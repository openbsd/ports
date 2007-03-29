# $OpenBSD: Makefile,v 1.15 2007/03/29 13:39:14 jasper Exp $

COMMENT=	"tools and library routines for working with GIF images"

DISTNAME=	libungif-4.1.4
PKGNAME=	${DISTNAME}p1
SHARED_LIBS=	gif	5.4 \
		ungif	5.4
CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=libungif/}

HOMEPAGE=	http://sourceforge.net/projects/libungif/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m

USE_LIBTOOL=		Yes
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
