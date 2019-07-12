# $OpenBSD: Makefile,v 1.39 2019/07/12 20:51:05 sthen Exp $

COMMENT=	text mode rss newsreader
DISTNAME=	snownews-1.5.12
REVISION=	6
CATEGORIES=	www
MASTER_SITES=	${HOMEPAGE}download/

HOMEPAGE=	http://kiza.kcore.de/software/snownews/

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB +=	c crypto curses iconv intl m lzma pthread xml2 z

NO_TEST=	Yes
USE_GMAKE=	Yes

BUILD_DEPENDS=	devel/gettext,-tools
RUN_DEPENDS=	textproc/p5-XML-LibXML
LIB_DEPENDS=	devel/gettext,-runtime \
		textproc/libxml

MAKE_ENV+=	EXTRA_CFLAGS="${CFLAGS}"
MAKE_FLAGS+=	CC="${CC}"

CONFIGURE_STYLE= simple
CONFIGURE_ARGS=	 --prefix=${PREFIX}

post-install:
	ln -f ${PREFIX}/bin/opml2snow ${PREFIX}/bin/snow2opml

.include <bsd.port.mk>
