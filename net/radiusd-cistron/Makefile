# $OpenBSD: Makefile,v 1.7 2000/09/23 19:59:53 danh Exp $

VERSION=	1.6.4
DISTNAME=	radiusd-cistron-${VERSION}
CATEGORIES=	net
NEED_VERSION=	1.334
MASTER_SITES=	ftp://ftp.cistron.nl/pub/people/miquels/radius/ \
		ftp://ftp.freeradius.org/pub/radius/ \
		ftp://ftp.mma.com.br/pub/cistron-radius/

HOMEPAGE=	http://miquels.www.cistron.nl/radius/

MAINTAINER=	Dan Harnett <danh@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes 

WRKSRC=		${WRKDIST}/src
MAKE_FILE=	Makefile.BSD
MAKE_FLAGS+=	CFLAGS="-O2 -DNOSHADOW -DNDBM" LCRYPT="" 
FAKE_FLAGS+=	BINDIR='${WRKINST}${PREFIX}/bin' \
		SBINDIR='${WRKINST}${PREFIX}/sbin' \
		RADIUS_DIR='${WRKINST}${PREFIX}/share/examples/radiusd-cistron'

post-install:
	${INSTALL_MAN} ${WRKDIST}/doc/naslist.5rad ${PREFIX}/man/man5/naslist.5
	${INSTALL_MAN} ${WRKDIST}/doc/clients.5rad ${PREFIX}/man/man5/clients.5
	${INSTALL_MAN} ${WRKDIST}/doc/builddbm.8rad \
		${PREFIX}/man/man8/builddbm.8
	${INSTALL_MAN} ${WRKDIST}/doc/radiusd.8 ${PREFIX}/man/man8
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/radiusd-cistron
	@for file in ${WRKDIST}/doc/README* ; do \
		${INSTALL_DATA} $$file ${PREFIX}/share/doc/radiusd-cistron; \
	done

.include <bsd.port.mk>
