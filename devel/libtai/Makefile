# $OpenBSD: Makefile,v 1.2 2001/04/22 12:18:16 camield Exp $

COMMENT=	"library for storing and manipulating dates and times"

DISTNAME=	libtai-0.60
HOMEPAGE=	http://cr.yp.to/libtai.html

CATEGORIES=	devel
NEED_VERSION=	1.395
MAINTAINER=	Brian J. Kifiak <bk@rt.fm>

MASTER_SITES=		http://cr.yp.to/libtai/

PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	No
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

ALL_TARGET=	default

HDRLIST=	caldate.h caltime.h leapsecs.h tai.h taia.h

MANLIST=	tai.3 tai_now.3 tai_pack.3 taia.3 taia_now.3 taia_pack.3 \
		caldate.3 caldate_mjd.3 caltime.3 caltime_tai.3 leapsecs.3

PROGLIST=	easter leapsecs nowutc yearcal

pre-build:
	@echo ${CC} ${CFLAGS} > ${WRKSRC}/conf-cc

do-install:
	${INSTALL_DATA} ${WRKSRC}/libtai.a ${PREFIX}/lib/
	${INSTALL_DATA_DIR} ${PREFIX}/share/libtai/
	${INSTALL_DATA} ${WRKSRC}/leapsecs.dat ${PREFIX}/share/libtai/
	(cd ${WRKSRC}; ${INSTALL_DATA} ${HDRLIST} ${PREFIX}/include/; \
		       ${INSTALL_MAN} ${MANLIST} ${PREFIX}/man/man3/; \
		       ${INSTALL_PROGRAM} ${PROGLIST} ${PREFIX}/bin/)

.include <bsd.port.mk>
