#
# $OpenBSD: Makefile,v 1.1.1.1 2000/05/26 01:44:10 espie Exp $
#

DISTNAME=		radiusd-cistron-1.6.3-stable
PKGNAME=		radiusd-cistron-1.6.3
CATEGORIES=     	net
HOMEPAGE=		http://miquels.www.cistron.nl/radius/
MAINTAINER=		danh@nfol.com

MASTER_SITES=		ftp://ftp.cistron.nl/pub/people/miquels/radius/

LICENCE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes 

FAKE=			Yes

WRKSRC=		${WRKDIST}/src
MAKE_FILE=	Makefile.BSD
MAKE_FLAGS+=	CFLAGS="-Wall -O2 -DNOSHADOW -DNDBM"
MAKE_FLAGS+=	LCRYPT=""
FAKE_FLAGS+=	RADIUS_DIR='${WRKINST}${PREFIX}/share/examples/radiusd-cistron'
FAKE_FLAGS+=	SBINDIR='${WRKINST}${PREFIX}/sbin'
FAKE_FLAGS+=	BINDIR='${WRKINST}${PREFIX}/bin'

post-install:
	@cd ${WRKDIST}/doc; ${INSTALL_MAN} naslist.5rad ${PREFIX}/man/man5/naslist.5
	@cd ${WRKDIST}/doc; ${INSTALL_MAN} clients.5rad ${PREFIX}/man/man5/clients.5
	@cd ${WRKDIST}/doc; ${INSTALL_MAN} builddbm.8rad ${PREFIX}/man/man8/builddbm.8
	@cd ${WRKDIST}/doc; ${INSTALL_MAN} radiusd.8 ${PREFIX}/man/man8
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/radiusd-cistron
	@cd ${WRKDIST}/doc; cp README* ${PREFIX}/share/doc/radiusd-cistron

.include <bsd.port.mk>
