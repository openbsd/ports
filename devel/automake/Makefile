# $OpenBSD: Makefile,v 1.7 1999/03/29 20:46:17 brad Exp $

DISTNAME=	automake-1.4
CATEGORIES=	devel

MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= automake

MAINTAINER=	jasoni@openbsd.org

GNU_CONFIGURE=	yes
CONFIGURE_ENV=	PERL=/usr/bin/perl
USE_PERL5=	YES
STRIP=		# none

pre-configure:
	${RM} ${WRKSRC}/automake.info*

post-install:
	@if [ ! -f ${PREFIX}/info/dir ]; then \
	  ${SED} -ne '1,/Menu:/p' /usr/share/info/dir > ${PREFIX}/info/dir; \
	 fi
	@install-info ${PREFIX}/info/automake.info ${PREFIX}/info/dir

.include <bsd.port.mk>
