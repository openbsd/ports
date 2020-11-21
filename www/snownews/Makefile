# $OpenBSD: Makefile,v 1.41 2020/11/21 22:03:13 kmos Exp $

COMMENT=	text mode rss newsreader
CATEGORIES=	www

GH_ACCOUNT=	kouya
GH_PROJECT=	snownews
GH_TAGNAME=	1.6.10

HOMEPAGE=	https://github.com/kouya/snownews

# GPLv3 only
PERMIT_PACKAGE=	Yes

# C11
COMPILER=	base-clang ports-gcc

WANTLIB +=	c curses iconv intl xml2 z

NO_TEST=	Yes

USE_GMAKE=	Yes

BUILD_DEPENDS=	devel/gettext,-tools
RUN_DEPENDS=	textproc/p5-XML-LibXML
LIB_DEPENDS=	devel/gettext,-runtime \
		textproc/libxml

CONFIGURE_STYLE=	simple
CONFIGURE_ARGS=	--prefix="\$${PREFIX}" \
		--mandir="\$${PREFIX}/man" \
		--builddir=${WRKDIR}
MAKE_ENV=	COPTFLAGS="${CFLAGS}"

.include <bsd.port.mk>
