# $OpenBSD: Makefile,v 1.16 2002/02/15 21:28:50 danh Exp $

COMMENT=	"Cistron RADIUS server"

VERSION=	1.6.6
DISTNAME=	radiusd-cistron-${VERSION}
CATEGORIES=	net
NEED_VERSION=	1.504
MASTER_SITES=	ftp://ftp.radius.cistron.nl/pub/radius/ \
		ftp://ftp.freeradius.org/pub/radius/ \
		ftp://ftp.mma.com.br/pub/cistron-radius/

HOMEPAGE=	http://www.radius.cistron.nl/

MAINTAINER=	Dan Harnett <danh@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes 

WRKSRC=		${WRKDIST}/src
MAKE_FILE=	Makefile.BSD
MAKE_FLAGS+=	CC="${CC}" LCRYPT="" DBM="-DUSE_DB1" DBMLIBS="" \
		CFLAGS="${CFLAGS} -DNOSHADOW -DUSE_SYSLOG"
FAKE_FLAGS+=	BINDIR='${WRKINST}${PREFIX}/bin' \
		SBINDIR='${WRKINST}${PREFIX}/sbin' \
		MANDIR='${WRKINST}${PREFIX}/man' \
		RADIUS_DIR='${WRKINST}${PREFIX}/share/examples/radiusd-cistron'
NO_REGRESS=	Yes

post-install:
	${INSTALL_MAN} ${WRKDIST}/doc/clients.5rad ${PREFIX}/man/man5/clients.5
	${INSTALL_MAN} ${WRKDIST}/doc/naslist.5rad ${PREFIX}/man/man5/naslist.5
	${INSTALL_MAN} ${WRKDIST}/doc/builddbm.8rad \
		${PREFIX}/man/man8/builddbm.8
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/radiusd-cistron
	@for file in ${WRKDIST}/doc/README* ; do \
		${INSTALL_DATA} $$file ${PREFIX}/share/doc/radiusd-cistron; \
	done

.include <bsd.port.mk>
