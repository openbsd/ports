# $OpenBSD: Makefile,v 1.19 2000/06/02 12:57:51 brad Exp $
# $FreeBSD: Makefile,v 1.13 1999/03/01 16:18:30 mph Exp $

DISTNAME=	epic4pre2.508
PKGNAME=	epic4-pre2.508
CATEGORIES=	net
NEED_VERSION=	1.234
MASTER_SITES=	ftp://ftp.epicsol.org/pub/epic/EPIC4-ALPHA/ \
		ftp://mirror.pipex.net/pub/epic/EPIC4-ALPHA/ \
		ftp://totem.fix.no/pub/mirrors/epic/EPIC4-ALPHA/
MASTER_SITES1=	ftp://ftp.epicsol.org/pub/epic/EPIC4-BETA/ \
		ftp://mirror.pipex.net/pub/epic/EPIC4-BETA/ \
		ftp://totem.fix.no/pub/mirrors/epic/EPIC4-BETA/
DISTFILES=	epic4pre2.508.tar.gz epic4pre2-help.tar.gz:1
EXTRACT_ONLY=	epic4pre2.508.tar.gz

PATCHFILES=	epic4pre2.508-patch1
.if defined(PATCH_DEBUG) && ${PATCH_DEBUG:U} == YES
PATCH_DIST_ARGS=-d ${WRKDIST}/source -E ${PATCH_DIST_STRIP}
.else
PATCH_DIST_ARGS=-d ${WRKDIST}/source --forward --quiet -E ${PATCH_DIST_STRIP}
.endif

MAINTAINER=	brad@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE=	Yes

SEPARATE_BUILD=	concurrent
GNU_CONFIGURE=	Yes

FAKE_FLAGS=	IP="${WRKINST}" \
		INSTALL="${INSTALL_PROGRAM}" INSTALL_DATA="${INSTALL_DATA}"

post-install:
	${INSTALL_MAN} ${WRKSRC}/doc/epic.1 ${PREFIX}/man/man1
	@cd ${PREFIX}/share/epic && tar -zxf ${FULLDISTDIR}/epic4pre2-help.tar.gz

.include <bsd.port.mk>
