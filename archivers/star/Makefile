# $OpenBSD: Makefile,v 1.9 2002/06/26 15:22:54 naddy Exp $
# $FreeBSD: Makefile,v 1.7 1998/12/24 13:15:23 dirk Exp $

COMMENT=	"unique standard tape archiver with many enhancements"

DISTNAME=	star-1.4.1
CATEGORIES=	archivers sysutils
NEED_VERSION=	1.515

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.fokus.gmd.de/pub/unix/star/
EXTRACT_SUFX=	.tar.bz2

FLAVORS=	static
FLAVOR?=

RUN_DEPENDS=	:bzip2-*:archivers/bzip2

USE_GMAKE=	Yes
MAKE_ENV=	MAKEPROG="${MAKEPROG}" \
		CCOM="${CC}" COPTX="${CFLAGS}" \
		SYSCONFDIR="${SYSCONFDIR}"

.if ${FLAVOR:L:Mstatic}
MAKE_ENV+=	LDOPTX=-static
.endif

.if ${MACHINE} != "i386" || ${CC} != "cc"
do-configure:
	@ln -sf ${WRKSRC}/RULES/i386-openbsd-cc.rul \
		${WRKSRC}/RULES/${MACHINE}-openbsd-${CC}.rul
.endif

OBJ=	OBJ/${MACHINE}-openbsd-${CC}

do-install:
.for prog in star tartest
	${INSTALL_PROGRAM} ${WRKBUILD}/${prog}/${OBJ}/${prog} ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/${prog}/${prog}.1 ${PREFIX}/man/man1
.endfor
	cd ${PREFIX}/bin; ln -sf star ustar
	cd ${PREFIX}/man/man1; ln -sf star.1 ustar.1
	${INSTALL_PROGRAM} ${WRKBUILD}/rmt/${OBJ}/rmt ${PREFIX}/libexec/srmt
	perl -pi -e 's,%%SYSCONFDIR%%,${SYSCONFDIR},g' ${WRKSRC}/rmt/rmt.1
	${INSTALL_MAN} ${WRKSRC}/rmt/rmt.1 ${PREFIX}/man/man8/srmt.8
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/star
	${INSTALL_DATA} ${WRKSRC}/rmt/rmt.dfl \
		${PREFIX}/share/examples/star/srmt.conf.sample

NO_REGRESS=	Yes

.include <bsd.port.mk>
