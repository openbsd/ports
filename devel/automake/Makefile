# $OpenBSD: Makefile,v 1.8 1999/10/29 21:46:14 brad Exp $

DISTNAME=	automake-1.4
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= automake

MAINTAINER=	jasoni@openbsd.org

GNU_CONFIGURE=	yes
CONFIGURE_ENV=	PERL=/usr/bin/perl

pre-configure:
	@${RM} -f ${WRKSRC}/automake.info*

post-install:
	@if [ ! -f ${PREFIX}/info/dir ]; then \
	  ${SED} -ne '1,/Menu:/p' /usr/share/info/dir > ${PREFIX}/info/dir; \
	 fi
	@install-info ${PREFIX}/info/automake.info ${PREFIX}/info/dir

.include <bsd.port.mk>
