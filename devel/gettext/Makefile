# $OpenBSD: Makefile,v 1.2 1999/03/07 00:14:41 brad Exp $
# $FreeBSD: Makefile,v 1.4 1998/11/18 15:09:35 vanilla Exp $
#

DISTNAME=	gettext-0.10
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= gettext

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
