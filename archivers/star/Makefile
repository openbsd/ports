# $OpenBSD: Makefile,v 1.7 2002/03/21 20:35:41 espie Exp $
# $FreeBSD: Makefile,v 1.7 1998/12/24 13:15:23 dirk Exp $

COMMENT=	"unique standard tape archiver with many enhancements"

DISTNAME=	star-1.3
CATEGORIES=	archivers sysutils
NEED_VERSION=	1.515

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.fokus.gmd.de/pub/unix/star/ \
		ftp://ftp.ntua.gr/pub/utils/focus/star/ \
		ftp://ftp.st.ryukoku.ac.jp/pub/utils/backup/star/

FLAVORS=	static
FLAVOR?=

USE_GMAKE=	Yes
MAKE_ENV=	MAKEPROG="${MAKEPROG}" CCOM="${CC}" SYSCONFDIR="${SYSCONFDIR}"

.if ${FLAVOR:L:Mstatic}
MAKE_ENV+=	LDFLAGS=-static
.endif

.if ${MACHINE} != "i386" || ${CC} != "cc"
do-configure:
	@ln -sf ${WRKSRC}/RULES/i386-openbsd-cc.rul \
		${WRKSRC}/RULES/${MACHINE}-openbsd-${CC}.rul
.endif

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/star/OBJ/${MACHINE}-openbsd-${CC}/star \
		${PREFIX}/bin/star
	cd ${PREFIX}/bin; ln -sf star ustar
	${INSTALL_MAN} ${WRKSRC}/star/star.1 ${PREFIX}/man/man1/star.1
	cd ${PREFIX}/man/man1; ln -sf star.1 ustar.1
	${INSTALL_PROGRAM} ${WRKBUILD}/rmt/OBJ/${MACHINE}-openbsd-${CC}/rmt \
		${PREFIX}/libexec/srmt
	perl -pi -e 's,%%SYSCONFDIR%%,${SYSCONFDIR},g' ${WRKSRC}/rmt/rmt.1
	${INSTALL_MAN} ${WRKSRC}/rmt/rmt.1 ${PREFIX}/man/man8/srmt.8
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/star
	${INSTALL_DATA} ${WRKSRC}/rmt/rmt.dfl \
		${PREFIX}/share/examples/star/srmt.conf.sample

NO_REGRESS=	Yes

.include <bsd.port.mk>
