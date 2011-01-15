# $OpenBSD: Makefile,v 1.11 2011/01/15 11:09:17 jasper Exp $

COMMENT=	text document format for writing documents and man pages 

DISTNAME=	asciidoc-8.6.3
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
RUN_DEPENDS=	textproc/libxslt

MODPY_ADJ_FILES=a2x.py \
		asciidoc.py \
		filters/{code,graphviz,latex,music}/*.py

NO_BUILD=	Yes
NO_REGRESS=	Yes
USE_GROFF =	Yes

post-configure:
	@perl -pi -e 's,/etc,${SYSCONFDIR},g' ${WRKSRC}/asciidoc.py

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/asciidoc.py ${PREFIX}/bin/asciidoc 
	${INSTALL_SCRIPT} ${WRKSRC}/a2x.py ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/doc/asciidoc.1 ${WRKSRC}/doc/a2x.1 \
				${PREFIX}/man/man1

	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/asciidoc \
				${PREFIX}/share/examples/asciidoc/filters \
				${PREFIX}/share/examples/asciidoc/docbook-xsl \
				${PREFIX}/share/examples/asciidoc/stylesheets \
				${PREFIX}/share/examples/asciidoc/javascripts \
				${PREFIX}/share/examples/asciidoc/images/icons/callouts

	${INSTALL_DATA} ${WRKSRC}/*.conf ${PREFIX}/share/examples/asciidoc

	cd ${WRKSRC}/filters/ && umask 022 && pax -rw . \
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
