# $OpenBSD: Makefile,v 1.40 2001/03/24 22:03:24 brad Exp $
# $FreeBSD: Makefile,v 1.13 1999/03/01 16:18:30 mph Exp $

COMMENT=	"(E)nhanced (P)rogrammable (I)RC-II (C)lient"

VERSION=	0.10.1
DISTNAME=	epic4-${VERSION}
CATEGORIES=	net
NEED_VERSION=	1.363
MASTER_SITES=	http://ftp.epicsol.org/pub/epic/EPIC4-BETA/
DISTFILES=	epic4-${VERSION}.tar.gz epic4pre2-help.tar.gz
EXTRACT_ONLY=	epic4-${VERSION}.tar.gz

HOMEPAGE=	http://www.epicsol.org/

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SUBST_VARS=	VERSION

MAKE_FLAGS=	wserv_exe='$$(libexecdir)/wserv-epic'
FAKE_FLAGS=	IP="${WRKINST}" \
		INSTALL_PROGRAM="${INSTALL_PROGRAM}" \
		INSTALL_DATA="${INSTALL_DATA}" \
		${MAKE_FLAGS}

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu

post-install:
	@cd ${PREFIX}/bin && ln -sf epic-EPIC4-${VERSION} epic
	${INSTALL_MAN} ${WRKSRC}/doc/epic.1 ${PREFIX}/man/man1
	@cd ${PREFIX}/share/epic && tar -zxf ${FULLDISTDIR}/epic4pre2-help.tar.gz

.include <bsd.port.mk>
