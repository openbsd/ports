# $OpenBSD: Makefile,v 1.35 2017/11/19 15:05:16 naddy Exp $

COMMENT=	text mode rss newsreader
DISTNAME=	snownews-1.5.12
REVISION=	3
CATEGORIES=	www
MASTER_SITES=	${HOMEPAGE}download/

HOMEPAGE=	http://kiza.kcore.de/software/snownews/

MAINTAINER=	David Cathcart <cathcart@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB +=	c crypto curses iconv intl m lzma xml2 z

NO_TEST=	Yes
USE_GMAKE=	Yes

BUILD_DEPENDS=	devel/gettext-tools
RUN_DEPENDS=	textproc/p5-XML-LibXML
LIB_DEPENDS=	devel/gettext \
		textproc/libxml

MAKE_ENV+=	EXTRA_CFLAGS="${CFLAGS}"
MAKE_FLAGS+=	CC="${CC}"

CONFIGURE_STYLE= simple
CONFIGURE_ARGS=	 --prefix=${PREFIX}

post-install:
	ln -f ${PREFIX}/bin/opml2snow ${PREFIX}/bin/snow2opml

.include <bsd.port.mk>
