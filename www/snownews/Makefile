# $OpenBSD: Makefile,v 1.7 2004/08/10 08:46:50 xsa Exp $

COMMENT=	"text mode rss newsreader"
DISTNAME=	snownews-1.4.4
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

MODULES=	devel/gettext

LIB_DEPENDS+=	xml2.7.10::textproc/libxml

MAKE_ENV+=	EXTRA_LDFLAGS="-lintl -liconv" INSTALL=install

.include <bsd.port.mk>
