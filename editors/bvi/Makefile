# $OpenBSD: Makefile,v 1.2 2000/03/25 14:33:31 kevlo Exp $

DISTNAME=	bvi-1.2.0
CATEGORIES=	editors

HOMEPAGE=	http://bvi.linuxave.net

MAINTAINER=	naddy@unix-ag.uni-kl.de

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://bvi.linuxave.net/download/
EXTRACT_SUFX=	.src.tar.gz

FAKE=		Yes

HAS_CONFIGURE=	Yes
CONFIGURE_ARGS=	--prefix='$${DESTDIR}${PREFIX}'

.include <bsd.port.mk>
