# $OpenBSD: Makefile,v 1.8 2004/10/13 03:58:41 jolan Exp $

COMMENT=	"text mode rss newsreader"
DISTNAME=	snownews-1.5.4
CATEGORIES=	www
MASTER_SITES=	${HOMEPAGE}download/

HOMEPAGE=	http://home.kcore.de/~kiza/software/snownews/

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

NO_REGRESS=	Yes
USE_GMAKE=	Yes

MODULES=	devel/gettext

LIB_DEPENDS+=	xml2.7.10::textproc/libxml

MAKE_ENV+=	EXTRA_LDFLAGS="-lintl -liconv" INSTALL=install \
	EXTRA_CFLAGS="-DSTATIC_CONST_ICONV -I${LOCALBASE}/include ${CFLAGS}"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/snownews
	${INSTALL_DATA} ${WRKSRC}/README{,.colors,.de} \
		${PREFIX}/share/doc/snownews

.include <bsd.port.mk>
