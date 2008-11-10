# $OpenBSD: Makefile,v 1.4 2008/11/10 11:58:34 pea Exp $

COMMENT=	A text document format for writing documents and man pages 

DISTNAME=	asciidoc-8.2.7
CATEGORIES=	textproc

MAINTAINER=	Robert Nagy <robert@openbsd.org>

HOMEPAGE=	http://www.methods.co.nz/asciidoc/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE} \
		${MASTER_SITE_SOURCEFORGE:=asciidoc/}

MODULES=	lang/python
RUN_DEPENDS=	::misc/gnugetopt \
		::shells/bash \
		::textproc/libxslt

NO_BUILD=	Yes
NO_REGRESS=	Yes

post-configure:
	@perl -pi -e 's,/usr/bin/env python,/usr/bin/env ${MODPY_BIN},g' \
		${WRKSRC}/asciidoc.py ${WRKSRC}/filters/*.py

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/asciidoc.py ${PREFIX}/bin/asciidoc 
	${INSTALL_SCRIPT} ${WRKSRC}/a2x ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/doc/asciidoc.1 ${WRKSRC}/doc/a2x.1 \
				${PREFIX}/man/man1

	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/asciidoc \
				${PREFIX}/share/examples/asciidoc/filters \
				${PREFIX}/share/examples/asciidoc/docbook-xsl \
				${PREFIX}/share/examples/asciidoc/stylesheets \
				${PREFIX}/share/examples/asciidoc/javascripts \
				${PREFIX}/share/examples/asciidoc/images/icons/callouts

	${INSTALL_DATA} ${WRKSRC}/*.conf ${PREFIX}/share/examples/asciidoc

	${INSTALL_SCRIPT} ${WRKSRC}/filters/code-filter.py \
				${WRKSRC}/filters/music2png.py \
				${PREFIX}/share/examples/asciidoc/filters

	${INSTALL_DATA} ${WRKSRC}/filters/*.conf \
		${PREFIX}/share/examples/asciidoc/filters
	${INSTALL_DATA} ${WRKSRC}/docbook-xsl/*.xsl \
		${PREFIX}/share/examples/asciidoc/docbook-xsl
	${INSTALL_DATA} ${WRKSRC}/stylesheets/*.css \
		${PREFIX}/share/examples/asciidoc/stylesheets
	${INSTALL_DATA} ${WRKSRC}/javascripts/*.js \
		${PREFIX}/share/examples/asciidoc/javascripts
	${INSTALL_DATA} ${WRKSRC}/images/icons/*.png \
		${PREFIX}/share/examples/asciidoc/images/icons
	${INSTALL_DATA} ${WRKSRC}/images/icons/callouts/* \
		${PREFIX}/share/examples/asciidoc/images/icons/callouts

.include <bsd.port.mk>
