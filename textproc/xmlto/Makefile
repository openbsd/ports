# $OpenBSD: Makefile,v 1.21 2019/07/12 20:50:17 sthen Exp $

COMMENT=	front-end for converting XML files to various formats

DISTNAME=	xmlto-0.0.28
EXTRACT_SUFX=	.tar.bz2

REVISION=	0

CATEGORIES=	textproc

HOMEPAGE=	https://pagure.io/xmlto

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += c

MASTER_SITES=	https://releases.pagure.org/xmlto/

RUN_DEPENDS=	misc/gnugetopt \
		print/libpaper \
		shells/bash \
		textproc/docbook-xsl \
		www/lynx

BUILD_DEPENDS=	misc/gnugetopt

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-webbrowser=lynx

# so that we do not need more BUILD_DEPENDS
CONFIGURE_ENV=  BASH=${LOCALBASE}/bin/bash \
		DBLATEX=${LOCALBASE}/bin/dblatex \
		FIND=/usr/bin/find \
		GETOPT=${LOCALBASE}/bin/gnugetopt \
		GREP=/usr/bin/grep \
		LINKS=${LOCALBASE}/bin/links \
		LYNX=${LOCALBASE}/bin/lynx \
		PAPERCONF=${LOCALBASE}/bin/paperconf \
		PDFXMLTEX=${LOCALBASE}/bin/pdfxmltex \
		TAIL=/usr/bin/tail \
		XMLLINT=${LOCALBASE}/bin/xmllint \
		XMLTEX=${LOCALBASE}/bin/xmltex \
		XSLTPROC=${LOCALBASE}/bin/xsltproc \
		W3M=${LOCALBASE}/bin/w3m \
		ZIP_PATH=${LOCALBASE}/bin/zip

pre-configure:
	sed -i 's,/bin/bash,${LOCALBASE}/bin/bash,g' \
		${WRKSRC}/xmlif/test/run-test

.include <bsd.port.mk>
