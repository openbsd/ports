# $OpenBSD: Makefile,v 1.2 2004/02/09 03:53:13 kevlo Exp $

COMMENT=	"library for Chinese language processing"

DISTNAME=	libtabe-0.2.5
PKGNAME=	zh-${DISTNAME}
CATEGORIES=	chinese

HOMEPAGE=	http://libtabe.sourceforge.net/

MAINTAINER=     Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	ftp://xcin.linux.org.tw/pub/xcin/libtabe/devel/

LIB_DEPENDS=	lib/db/db.3:db->3,<4:databases/db/v3

USE_X11=	Yes
CONFIGURE_STYLE= gnu dest
CONFIGURE_ARGS=	--with-db-inc=${LOCALBASE}/include/db \
		--with-db-lib=${LOCALBASE}/lib \
		${CONFIGURE_SHARED}
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

WRKDIST=	${WRKDIR}/libtabe

.include <bsd.port.mk>
