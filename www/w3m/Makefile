# $OpenBSD: Makefile,v 1.9 2000/03/08 03:10:58 espie Exp $

DISTNAME=	w3m-0.1.6
CATEGORIES=	www
MASTER_SITES=	ftp://ftp.firedrake.org/w3m/ \
		ftp://ei5nazha.yz.yamagata-u.ac.jp/w3m/ \
		http://www.instinct.org/w3m/

MAINTAINER=	dugsong@monkey.org

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

HAS_CONFIGURE=	Yes
CONFIGURE_ARGS=	-yes

FAKE=Yes
WRKDIST=	${WRKDIR}/w3m

HOST!=	uname -n

pre-configure:
	@echo "# Configuration at ${HOST}" > ${WRKBUILD}/config.param
	@sed -e 's|!!PREFIX!!|${PREFIX}|' ${FILESDIR}/config.param >> \
		${WRKBUILD}/config.param

pre-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/w3m
	${INSTALL_MAN} ${WRKSRC}/doc/w3m.1 ${PREFIX}/man/man1
	${INSTALL_DATA} ${WRKSRC}/doc/[F-Sk-m]* ${PREFIX}/share/doc/w3m

.include <bsd.port.mk>
