# $OpenBSD: Makefile,v 1.5 1999/01/19 00:08:58 espie Exp $
#

DISTNAME=       autoconf-2.13
CATEGORIES=	devel

MAINTAINER=	marc@OpenBSD.ORG

MASTER_SITES=	${MASTER_SITE_GNU}

RUN_DEPENDS=	gm4:${PORTSDIR}/devel/m4

GNU_CONFIGURE=	yes

post-install:
	@if [ ! -f ${PREFIX}/info/dir ]; then \
	  ${SED} -ne '1,/Menu:/p' /usr/share/info/dir > ${PREFIX}/info/dir; \
	 fi
	@install-info ${PREFIX}/info/autoconf.info ${PREFIX}/info/dir
	@install-info ${PREFIX}/info/standards.info ${PREFIX}/info/dir

.include <bsd.port.mk>
