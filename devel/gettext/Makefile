# $OpenBSD: Makefile,v 1.1.1.1 1998/11/24 07:30:48 jasoni Exp $
# $FreeBSD: Makefile,v 1.4 1998/11/18 15:09:35 vanilla Exp $
#

DISTNAME=	gettext-0.10
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU}

MAINTAINER=	jasoni@openbsd.org

GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--with-gnu-gettext

pre-configure:
	${RM} ${WRKSRC}/doc/gettext.info*

post-install:
	@if [ ! -f ${PREFIX}/info/dir ]; then \
	  ${SED} -ne '1,/Menu:/p' /usr/share/info/dir > ${PREFIX}/info/dir; \
	 fi
	@install-info ${PREFIX}/info/gettext.info ${PREFIX}/info/dir

.include <bsd.port.mk>
