# $OpenBSD: Makefile,v 1.8 1999/10/01 00:55:28 jasoni Exp $
# $FreeBSD: Makefile,v 1.2 1998/09/23 16:15:53 vanilla Exp $

DISTNAME=		libtool-1.3.3
CATEGORIES=		devel
MASTER_SITES=		${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= 	libtool

NEED_VERSION=		1.73

MAINTAINER=		ports@openbsd.org

SEPARATE_BUILD=		simple
GNU_CONFIGURE=		yes
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ARGS+= 	--enable-static

pre-configure:
	${RM} ${WRKSRC}/doc/libtool.info*

post-install:
	@if [ -d ${PREFIX}/info -a ! -f ${PREFIX}/info/dir -a -f /usr/share/info/dir ]; then \
	  ${SED} -ne '1,/Menu:/p' /usr/share/info/dir > ${PREFIX}/info/dir; \
	fi

.include <bsd.port.mk>
