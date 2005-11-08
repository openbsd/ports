# $OpenBSD: Makefile,v 1.1.1.1 2005/11/08 10:40:17 espie Exp $
COMMENT=	"handling CHM files"
CATEGORIES=	devel textproc

HOMEPAGE=	http://66.93.236.84/~jedwin/projects/chmlib/
MASTER_SITES=	${HOMEPAGE}
EXTRACT_SUFX=	.tgz

DISTNAME=	chmlib-0.37.4
WRKDIST=	${WRKDIR}/chmlib-0.37

CONFIGURE_STYLE=gnu
USE_LIBTOOL=	Yes
USE_GMAKE=	Yes

# stupid linux shit
CONFIGURE_ARGS=	--disable-io64

WANTLIB=	pthread

#GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_REGRESS=	Yes

.include <bsd.port.mk>
