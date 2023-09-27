COMMENT=		check shell scripts for bash-specific constructs

V=			2.23.5
DISTNAME=		devscripts_$V
PKGNAME=		checkbashisms-$V
EXTRACT_SUFX=		.tar.xz
WRKDIST=		${WRKDIR}/devscripts
CATEGORIES=		sysutils devel

# GPLv2 only
PERMIT_PACKAGE=	Yes

SITES=			https://deb.debian.org/debian/pool/main/d/devscripts/

NO_BUILD=		Yes
NO_TEST=		Yes
PKG_ARCH=		*

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/scripts/checkbashisms.pl \
		${PREFIX}/bin/checkbashisms
	${INSTALL_MAN} ${WRKSRC}/scripts/checkbashisms.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
