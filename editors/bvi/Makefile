# $OpenBSD: Makefile,v 1.4 2000/11/18 13:37:54 naddy Exp $

DISTNAME=	bvi-1.3.0
CATEGORIES=	editors
NEED_VERSION=	1.340
HOMEPAGE=	http://bvi.linuxave.net

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/download/
EXTRACT_SUFX=	.src.tar.gz

CONFIGURE_STYLE= gnu
CFLAGS+=	-DANSI

.include <bsd.port.mk>
