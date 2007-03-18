# $OpenBSD: Makefile,v 1.14 2007/03/18 17:19:57 martynas Exp $

COMMENT=	"text mode rss newsreader"
DISTNAME=	snownews-1.5.7
PKGNAME=	${DISTNAME}p2
CATEGORIES=	www
MASTER_SITES=	${HOMEPAGE}download/

HOMEPAGE=	http://kiza.kcore.de/software/snownews/

MAINTAINER=	David Cathcart <cathcart@openbsd.org>

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=		c m ncurses z

NO_REGRESS=	Yes
USE_GMAKE=	Yes

MODULES=	devel/gettext

LIB_DEPENDS+=	xml2.>=7.10::textproc/libxml

MAKE_ENV+=	EXTRA_CFLAGS="${CFLAGS}"

CONFIGURE_STYLE= simple
CONFIGURE_ARGS=	 --prefix=${PREFIX}

.include <bsd.port.mk>
