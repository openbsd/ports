# $OpenBSD: Makefile,v 1.12 2000/03/24 22:11:39 espie Exp $
# $FreeBSD: Makefile,v 1.2 1998/09/23 16:15:53 vanilla Exp $

DISTNAME=		libtool-1.3.3
CATEGORIES=		devel
NEED_VERSION=		1.73
MASTER_SITES=		${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= 	libtool


MAINTAINER=		ports@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

SEPARATE_BUILD=		simple
GNU_CONFIGURE=		yes
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ARGS+= 	--enable-static

pre-configure:
	rm ${WRKSRC}/doc/libtool.info*

post-install:
	@if [ -d ${PREFIX}/info -a ! -f ${PREFIX}/info/dir -a -f /usr/share/info/dir ]; then \
	  sed -ne '1,/Menu:/p' /usr/share/info/dir > ${PREFIX}/info/dir; \
	fi

.include <bsd.port.mk>
