# $OpenBSD: Makefile,v 1.3 1999/09/21 19:55:52 brad Exp $
# $FreeBSD: Makefile,v 1.6 1998/09/22 15:30:37 vanilla Exp $

DISTNAME=	aalib-1.2
CATEGORIES=	graphics
MASTER_SITES=	ftp://ftp.ta.jcu.cz/pub/aa/

MAINTAINER=	brad@openbsd.org

GNU_CONFIGURE=	yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

post-install:
	@if [ ! -f ${PREFIX}/info/dir ]; then \
	 ${SED} -ne '1,/Menu:/p' /usr/share/info/dir > ${PREFIX}/info/dir; \
	fi
	${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
