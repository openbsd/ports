# $OpenBSD: Makefile,v 1.1.1.1 2000/03/14 07:57:37 kevlo Exp $

DISTNAME=	bvi-1.2.0
CATEGORIES=	editors

HOMEPAGE=	http://bvi.linuxbox.com/

MAINTAINER=	naddy@unix-ag.uni-kl.de

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://bvi.linuxbox.com/download/
EXTRACT_SUFX=	.src.tar.gz

FAKE=		Yes

HAS_CONFIGURE=	Yes
CONFIGURE_ARGS=	--prefix='$${DESTDIR}${PREFIX}'

.include <bsd.port.mk>
