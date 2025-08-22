COMMENT=		check shell scripts for bash-specific constructs

V=			2.25.18
DISTNAME=		devscripts_$V
PKGNAME=		checkbashisms-$V
EXTRACT_SUFX=		.tar.xz
WRKDIST=		${WRKDIR}/work/scripts
CATEGORIES=		sysutils devel

# GPLv2 only
PERMIT_PACKAGE=	Yes

SITES=			https://deb.debian.org/debian/pool/main/d/devscripts/

NO_BUILD=		Yes
NO_TEST=		Yes
PKG_ARCH=		*

do-install:
	sed -i "s/###VERSION###/${V}/g" ${WRKSRC}/checkbashisms.pl
	${INSTALL_SCRIPT} ${WRKSRC}/checkbashisms.pl \
		${PREFIX}/bin/checkbashisms
	${INSTALL_MAN} ${WRKSRC}/checkbashisms.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/bash-completion/completions/
	${INSTALL_DATA} ${WRKSRC}/checkbashisms.bash_completion \
		${PREFIX}/share/bash-completion/completions/checkbashisms

.include <bsd.port.mk>
