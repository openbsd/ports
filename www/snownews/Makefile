# $OpenBSD: Makefile,v 1.32 2015/04/21 18:19:27 sthen Exp $

COMMENT=	text mode rss newsreader
DISTNAME=	snownews-1.5.12
REVISION=	1
CATEGORIES=	www
MASTER_SITES=	${HOMEPAGE}download/

HOMEPAGE=	http://kiza.kcore.de/software/snownews/

MAINTAINER=	David Cathcart <cathcart@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto m ncurses pthread xml2>=7.10 z

NO_TEST=	Yes
USE_GMAKE=	Yes

MODULES=	devel/gettext
RUN_DEPENDS=	textproc/p5-XML-LibXML
LIB_DEPENDS=	textproc/libxml

MAKE_ENV+=	EXTRA_CFLAGS="${CFLAGS}"
MAKE_FLAGS+=	CC="${CC}"

CONFIGURE_STYLE= simple
CONFIGURE_ARGS=	 --prefix=${PREFIX}

post-install:
	ln -f ${PREFIX}/bin/opml2snow ${PREFIX}/bin/snow2opml

.include <bsd.port.mk>
