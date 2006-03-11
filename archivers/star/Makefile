# $OpenBSD: Makefile,v 1.16 2006/03/11 15:20:23 naddy Exp $
# $FreeBSD: Makefile,v 1.7 1998/12/24 13:15:23 dirk Exp $

COMMENT=	"unique standard tape archiver with many enhancements"

DISTNAME=	star-1.4.3
PKGNAME=	${DISTNAME}p0
CATEGORIES=	archivers sysutils
HOMEPAGE=	http://cdrecord.berlios.de/old/private/star.html

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.berlios.de/pub/star/
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
.else
WANTLIB=		c
.endif

.if ${MACHINE} != "i386" || ${CC} != "cc"
do-configure:
	@ln -sf ${WRKSRC}/RULES/i386-openbsd-cc.rul \
		${WRKSRC}/RULES/${MACHINE}-openbsd-${CC}.rul
.endif

OBJ=	OBJ/${MACHINE}-openbsd-${CC}

do-install:
	perl -pi -e 's,%%SYSCONFDIR%%,${SYSCONFDIR},g' \
		${WRKSRC}/star/star.1 ${WRKSRC}/rmt/rmt.1
.for prog in star tartest
	${INSTALL_PROGRAM} ${WRKBUILD}/${prog}/${OBJ}/${prog} ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/${prog}/${prog}.1 ${PREFIX}/man/man1
.endfor
	cd ${PREFIX}/bin; ln -sf star ustar
	cd ${PREFIX}/man/man1; ln -sf star.1 ustar.1
	${INSTALL_PROGRAM} ${WRKBUILD}/mt/${OBJ}/smt ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKBUILD}/rmt/${OBJ}/rmt ${PREFIX}/libexec/srmt
	${INSTALL_MAN} ${WRKSRC}/rmt/rmt.1 ${PREFIX}/man/man8/srmt.8
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/star
	${INSTALL_DATA} ${WRKSRC}/rmt/rmt.dfl \
		${PREFIX}/share/examples/star/srmt.conf

NO_REGRESS=	Yes

.include <bsd.port.mk>
