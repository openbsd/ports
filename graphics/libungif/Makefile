# $OpenBSD: Makefile,v 1.4 2003/04/14 15:02:09 wilfried Exp $

COMMENT=	"tools and library routines for working with GIF images"

DISTNAME=	libungif-4.1.0b1
CATEGORIES=	graphics
MASTER_SITES=	ftp://ftp.ayamura.org/pub/graphics/

HOMEPAGE=	http://prtr-13.ucsc.edu/~badger/software/libungif/index.shtml

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= autoconf
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static --without-x

PATCH_LIST=	${PORTSDIR}/infrastructure/patches/patch-lt1.3.3-ltconfig \
		${PORTSDIR}/infrastructure/patches/patch-lt1.3.3-ltmain_sh \
		patch-*

DOCS=	COPYING UNCOMPRESSED_GIF
HTMLDOCS= *.html *.txt *.png
DOCSDIR= ${PREFIX}/share/doc/libungif

pre-build:
	@touch ${WRKSRC}/aclocal.m4
	@find ${WRKSRC} -name 'Makefile.in' -print | xargs touch

post-install:
	@cd ${PREFIX}/lib; \
	for f in libungif.a libungif.so.5.0; do \
		g=`echo $$f | sed -e s#libungif#libgif#g`; \
		ln -sf $$f $$g; \
	done && \
	sed -e s#libungif#libgif#g libungif.la > libgif.la && \
	chown root:bin libgif.la && \
	chmod 755 libgif.la
	${INSTALL_DATA_DIR} ${DOCSDIR}
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${DOCSDIR}
	${INSTALL_DATA_DIR} ${DOCSDIR}/html
	cd ${WRKSRC}/doc; ${INSTALL_DATA} ${HTMLDOCS} ${DOCSDIR}/html

.include <bsd.port.mk>
