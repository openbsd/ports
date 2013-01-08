# $OpenBSD: Makefile,v 1.11 2013/01/08 07:03:08 ajacoutot Exp $

COMMENT=	front-end for converting XML files to various formats

DISTNAME=	xmlto-0.0.25
EXTRACT_SUFX=	.tar.bz2
CATEGORIES=	textproc

HOMEPAGE=	https://fedorahosted.org/xmlto/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c

MASTER_SITES=	https://fedorahosted.org/releases/x/m/xmlto/

RUN_DEPENDS=	shells/bash \
		misc/gnugetopt \
		textproc/docbook-xsl
BUILD_DEPENDS=	misc/gnugetopt

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-webbrowser=lynx
CONFIGURE_ENV=  BASH=${LOCALBASE}/bin/bash \
		DBLATEX=${LOCALBASE}/bin/dblatex \
		FIND=/usr/bin/find \
		GETOPT=${LOCALBASE}/bin/gnugetopt \
		GREP=/usr/bin/grep \
		LINKS=${LOCALBASE}/bin/links \
		LYNX=/usr/bin/lynx \
		PAPERCONF=${LOCALBASE}/bin/paperconf \
		PDFXMLTEX=${LOCALBASE}/bin/pdfxmltex \
		TAIL=/usr/bin/tail \
		XMLLINT=${LOCALBASE}/bin/xmllint \
		XMLTEX=${LOCALBASE}/bin/xmltex \
		XSLTPROC=${LOCALBASE}/bin/xsltproc \
		W3M=${LOCALBASE}/bin/w3m \
		ZIP_PATH=${LOCALBASE}/bin/zip

pre-configure:
	perl -pi -e 's,/bin/bash,${LOCALBASE}/bin/bash,g' \
		${WRKSRC}/xmlif/test/run-test

.include <bsd.port.mk>
