# $OpenBSD: Makefile,v 1.35 2000/12/04 15:29:35 brad Exp $
# $FreeBSD: Makefile,v 1.13 1999/03/01 16:18:30 mph Exp $

VERSION=	0.9.13
DISTNAME=	epic4-${VERSION}
CATEGORIES=	net
NEED_VERSION=	1.336
MASTER_SITES=	ftp://ftp.magenet.com/pub/epic/EPIC4-BETA/ \
		ftp://ftp.epicsol.org/pub/ircii/EPIC4-BETA/
DISTFILES=	epic4-${VERSION}.tar.gz epic4pre2-help.tar.gz
EXTRACT_ONLY=	epic4-${VERSION}.tar.gz

PATCH_FILES=	epic4-0.9.13-patch1

HOMEPAGE=	http://www.epicsol.org/

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SUBST_VARS=	VERSION

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
