# $OpenBSD: Makefile,v 1.3 1999/03/07 00:14:44 brad Exp $
# $FreeBSD: Makefile,v 1.7 1997/06/16 08:22:35 max Exp $
#

DISTNAME=       m4-1.4
CATEGORIES=	devel

MAINTAINER=	niklas@openbsd.org

MASTER_SITES=   ${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= m4

GNU_CONFIGURE=yes
CONFIGURE_ARGS= --program-prefix=g

post-install:
	@${MKDIR} ${PREFIX}/share/examples/gm4
	${INSTALL_DATA} ${WRKSRC}/examples/*.m4 ${PREFIX}/share/examples/gm4
	@if [ ! -f ${PREFIX}/info/dir ]; then \
	  ${SED} -ne '1,/Menu:/p' /usr/share/info/dir > ${PREFIX}/info/dir; \
	 fi
	@install-info ${PREFIX}/info/m4.info ${PREFIX}/info/dir

.include <bsd.port.mk>
