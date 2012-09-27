# $OpenBSD: Makefile,v 1.10 2012/09/27 17:26:05 ajacoutot Exp $

COMMENT=	front-end to an XSL toolchain

DISTNAME=	xmlto-0.0.18
REVISION=	4
EXTRACT_SUFX=	.tar.bz2
CATEGORIES=	textproc

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB+= c

MASTER_SITES=	http://cyberelk.net/tim/data/xmlto/stable/

RUN_DEPENDS=	shells/bash \
		misc/gnugetopt \
		textproc/docbook-xsl
BUILD_DEPENDS=	${RUN_DEPENDS} \
		textproc/docbook

CONFIGURE_STYLE= gnu

CONFIGURE_ARGS=	--with-bash=${LOCALBASE}/bin/bash \
		--with-getopt=${LOCALBASE}/bin/gnugetopt
USE_GROFF =	Yes

pre-configure:
	@perl -pi -e 's,/bin/bash,${LOCALBASE}/bin/bash,g' \
		${WRKSRC}/xmlif/test/run-test

.include <bsd.port.mk>
