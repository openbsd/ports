# $OpenBSD: Makefile,v 1.50 2003/04/15 16:19:03 brad Exp $
# $FreeBSD: Makefile,v 1.13 1999/03/01 16:18:30 mph Exp $

COMMENT=	"(E)nhanced (P)rogrammable (I)RC-II (C)lient"

VERSION=	1.0.1
HELP_DATE=	20011030
DISTNAME=	epic4-${VERSION}
CATEGORIES=	net
MASTER_SITES=	http://ftp.prbh.org/pub/epic/EPIC4-PRODUCTION/
MASTER_SITES0=	${MASTER_SITE_BACKUP}
DISTFILES=	epic4-${VERSION}.tar.gz epic4-help-${HELP_DATE}.tar.gz
EXTRACT_ONLY=	epic4-${VERSION}.tar.gz

PATCHFILES=	epic4-1.0.1-ipv6-20010418.patch.gz:0
PATCH_DIST_STRIP= -p1

HOMEPAGE=	http://www.prbh.org/

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

NO_REGRESS=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= autoconf

DOCS=	README README.v6 doc/IPv4-6.txt

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/epic4
	@cd ${PREFIX}/bin && ln -sf epic-EPIC4-${VERSION} epic
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/epic4
	${INSTALL_MAN} ${WRKSRC}/doc/epic.1 ${PREFIX}/man/man1
	@cd ${PREFIX}/share/epic && ${TAR} -zxf ${FULLDISTDIR}/epic4-help-${HELP_DATE}.tar.gz

.include <bsd.port.mk>
