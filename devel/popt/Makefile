# $OpenBSD: Makefile,v 1.4 2000/12/04 16:00:29 brad Exp $

DISTNAME=	popt-1.5.1
CATEGORIES=	devel
NEED_VERSION=	1.336
MASTER_SITES=	ftp://ftp.rpm.org/pub/rpm/dist/rpm-3.0.x/

LIB_DEPENDS=	intl.1::devel/gettext

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=	${WRKDIR}/popt-1.5

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
