# $OpenBSD: Makefile,v 1.1.1.1 1998/11/10 06:24:25 marc Exp $
# FreeBSD: Makefile,v 1.2 1998/09/23 16:15:53 vanilla Exp $
#

DISTNAME=	libtool-1.2
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU}

MAINTAINER=	jbi130@mail.usask.ca

GNU_CONFIGURE=	yes
CONFIGURE_ENV=	INSTALL_SCRIPT="${INSTALL_SCRIPT}" \
		INSTALL_DATA="${INSTALL_DATA}"

post-install:
	@if [ ! -f ${PREFIX}/info/dir ]; then \
	  ${SED} -ne '1,/Menu:/p' /usr/share/info/dir > ${PREFIX}/info/dir; \
	 fi
	@install-info ${PREFIX}/info/libtool.info ${PREFIX}/info/dir

.include <bsd.port.mk>
