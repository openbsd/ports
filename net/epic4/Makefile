# $OpenBSD: Makefile,v 1.44 2001/04/18 16:03:36 brad Exp $
# $FreeBSD: Makefile,v 1.13 1999/03/01 16:18:30 mph Exp $

COMMENT=	"(E)nhanced (P)rogrammable (I)RC-II (C)lient"

VERSION=	1.0.1
DISTNAME=	epic4-${VERSION}
CATEGORIES=	net
NEED_VERSION=	1.384
MASTER_SITES=	http://ftp.epicsol.org/pub/epic/EPIC4-PRODUCTION/
MASTER_SITES0=	http://ftp.epicsol.org/pub/epic/EPIC4-BETA/
MASTER_SITES1=	http://www.t17.ds.pwr.wroc.pl/~misiek/ipv6/ \
		http://zuntum.net/patches/ \
		http://flis.utech.lublin.pl/~zuntum/patches/
DISTFILES=	epic4-${VERSION}.tar.gz epic4pre2-help.tar.gz:0
EXTRACT_ONLY=	epic4-${VERSION}.tar.gz

PATCHFILES=	epic4-1.0.1-ipv6-20010418.patch.gz:1
PATCH_DIST_STRIP= -p1

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
CONFIGURE_STYLE= autoconf

DOCS=	README README.v6 doc/IPv4-6.txt

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/epic4
	@cd ${PREFIX}/bin && ln -sf epic-EPIC4-${VERSION} epic
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/epic4
	${INSTALL_MAN} ${WRKSRC}/doc/epic.1 ${PREFIX}/man/man1
	@cd ${PREFIX}/share/epic && tar -zxf ${FULLDISTDIR}/epic4pre2-help.tar.gz

.include <bsd.port.mk>
