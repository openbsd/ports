# $OpenBSD: Makefile,v 1.27 2000/07/20 10:49:58 brad Exp $
# $FreeBSD: Makefile,v 1.13 1999/03/01 16:18:30 mph Exp $

VERSION=	0.9.1
DISTNAME=	epic4-${VERSION}
CATEGORIES=	net
NEED_VERSION=	1.310
MASTER_SITES=	ftp://ftp.epicsol.org/pub/epic/EPIC4-BETA/ \
		ftp://mirror.pipex.net/pub/epic/EPIC4-BETA/ \
		ftp://totem.fix.no/pub/mirrors/epic/EPIC4-BETA/
DISTFILES=	epic4-${VERSION}.tar.gz epic4pre2-help.tar.gz
EXTRACT_ONLY=	epic4-${VERSION}.tar.gz

HOMEPAGE=	http://www.epicsol.org/

MAINTAINER=	brad@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu

FAKE_FLAGS=	IP="${WRKINST}" \
		INSTALL_PROGRAM="${INSTALL_PROGRAM}" \
		INSTALL_DATA="${INSTALL_DATA}"

post-install:
	@cd ${PREFIX}/bin && ln -sf epic-EPIC4-${VERSION} epic
	${INSTALL_MAN} ${WRKSRC}/doc/epic.1 ${PREFIX}/man/man1
	@cd ${PREFIX}/share/epic && tar -zxf ${FULLDISTDIR}/epic4pre2-help.tar.gz

.include <bsd.port.mk>
