# $OpenBSD: Makefile,v 1.4 2003/12/16 07:03:27 jolan Exp $

COMMENT=	"text mode rss newsreader"
DISTNAME=	snownews-1.4.1
CATEGORIES=	www
MASTER_SITES=	${HOMEPAGE}download/

HOMEPAGE=	http://home.kcore.de/~kiza/software/snownews/

MAINTAINER=	Jolan Luff <jolan@openbsd.org>

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

NO_REGRESS=	Yes
USE_GMAKE=	Yes

MODULES=	gettext

LIB_DEPENDS+=	xml2.7.10::textproc/libxml

MAKE_ENV+=	EXTRA_LDFLAGS="-lintl -liconv"

.include <bsd.port.mk>
