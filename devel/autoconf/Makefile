# $OpenBSD: Makefile,v 1.3 1999/01/06 21:29:51 marc Exp $
#

DISTNAME=       autoconf-2.13
CATEGORIES=	devel

MAINTAINER=	marc@OpenBSD.ORG

MASTER_SITES=	${MASTER_SITE_GNU}

RUN_DEPENDS=	gm4:${PORTSDIR}/devel/m4

GNU_CONFIGURE=	yes
CONFIGURE_ENV=	M4=${PREFIX}/bin/gm4

post-install:
	@if [ ! -f ${PREFIX}/info/dir ]; then \
	  ${SED} -ne '1,/Menu:/p' /usr/share/info/dir > ${PREFIX}/info/dir; \
	 fi
	@install-info ${PREFIX}/info/autoconf.info ${PREFIX}/info/dir
	@install-info ${PREFIX}/info/standards.info ${PREFIX}/info/dir

.include <bsd.port.mk>
