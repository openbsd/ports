# $OpenBSD: Makefile,v 1.9 2005/01/12 21:31:06 sturm Exp $

COMMENT=	"library for Chinese language processing"

DISTNAME=	libtabe-0.2.5
PKGNAME=	zh-${DISTNAME}p0
CATEGORIES=	chinese

HOMEPAGE=	http://libtabe.sourceforge.net/

MAINTAINER=     Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		c

MASTER_SITES=	ftp://xcin.linux.org.tw/pub/xcin/libtabe/devel/

LIB_DEPENDS=	lib/db/db.=3:db-3.*:databases/db/v3

USE_X11=	Yes
CONFIGURE_STYLE= gnu dest
CONFIGURE_ARGS=	--with-db-inc=${LOCALBASE}/include/db \
		--with-db-lib=${LOCALBASE}/lib/db \
		${CONFIGURE_SHARED}
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/script

WRKDIST=	${WRKDIR}/libtabe

.include <bsd.port.mk>
