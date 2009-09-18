# $OpenBSD: Makefile,v 1.24 2009/09/18 20:51:35 martynas Exp $

COMMENT=	text mode rss newsreader
DISTNAME=	snownews-1.5.12
CATEGORIES=	www
MASTER_SITES=	${HOMEPAGE}download/

HOMEPAGE=	http://kiza.kcore.de/software/snownews/

MAINTAINER=	David Cathcart <cathcart@openbsd.org>

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=		c crypto m ncurses z

NO_REGRESS=	Yes
USE_GMAKE=	Yes

MODULES=	devel/gettext
RUN_DEPENDS=	::textproc/p5-XML-LibXML
LIB_DEPENDS=	xml2.>=7.10::textproc/libxml

MAKE_ENV+=	EXTRA_CFLAGS="${CFLAGS}"
MAKE_FLAGS+=	CC="${CC}"

CONFIGURE_STYLE= simple
CONFIGURE_ARGS=	 --prefix=${PREFIX}

post-install:
	ln -f ${PREFIX}/bin/opml2snow ${PREFIX}/bin/snow2opml

.include <bsd.port.mk>
