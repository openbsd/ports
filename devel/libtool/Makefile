# $OpenBSD: Makefile,v 1.14 2000/04/10 18:56:06 espie Exp $
# $FreeBSD: Makefile,v 1.2 1998/09/23 16:15:53 vanilla Exp $

DISTNAME=		libtool-1.3.3
CATEGORIES=		devel
NEED_VERSION=		1.73
MASTER_SITES=		${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= 	libtool


MAINTAINER=		ports@openbsd.org
FAKE=			Yes

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=		simple
GNU_CONFIGURE=		Yes
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ARGS+= 	--enable-static

pre-configure:
	rm ${WRKSRC}/doc/libtool.info*

.include <bsd.port.mk>
