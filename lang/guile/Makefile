# $OpenBSD: Makefile,v 1.13 2000/03/24 22:11:46 espie Exp $

DISTNAME=	guile-1.3
CATEGORIES=	lang
NEED_VERSION=	1.73
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR=	guile


MAINTAINER=	rohee@OpenBSD.ORG

FAKE=Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=	simple
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

post-install:
	@mkdir -p ${LOCALBASE}/share/aclocal/
	@${INSTALL_DATA} ${WRKSRC}/guile.m4 ${LOCALBASE}/share/aclocal/
	@${INSTALL_DATA} ${WRKSRC}/qthreads.m4 ${LOCALBASE}/share/aclocal/
	${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
