# $OpenBSD: Makefile,v 1.1.1.1 2001/01/08 16:15:35 reinhard Exp $

DISTNAME=	ntl-5.0c
CATEGORIES=	math
NEED_VERSION=	1.348
MASTER_SITES=	http://www.shoup.net/ntl/

PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

HOMEPAGE=	http://www.shoup.net/ntl/

MAINTAINER=	Tom Knienieder <tom@knienieder.com>

WRKDIST=	${WRKDIR}/${DISTNAME}/src

CONFIGURE_STYLE= simple

pre-patch:
	@mv ${WRKDIST}/makefile ${WRKDIST}/Makefile

.include <bsd.port.mk>
