# $OpenBSD: Makefile,v 1.44 2009/09/11 16:14:01 naddy Exp $

COMMENT=	extract, list, and test RAR archives

DISTNAME=	unrarsrc-3.9.6
PKGNAME=	unrar-3.96
CATEGORIES=	archivers

HOMEPAGE=	http://www.rarlab.com/

MAINTAINER=	Rui Reis <rui@openbsd.org>

# Restrictive
PERMIT_PACKAGE_CDROM=	no fee
PERMIT_PACKAGE_FTP=	may not modify
PERMIT_DISTFILES_CDROM=	no fee
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m stdc++

MASTER_SITES=	${HOMEPAGE}rar/

WRKDIST=	${WRKDIR}/unrar

MAKE_FILE=	makefile.unix
MAKE_FLAGS=	CXX="${CXX}" CXXFLAGS="${CXXFLAGS}"

# gcc 3.3.5 internal compiler error
.if ${MACHINE_ARCH} == "mips64"
EXTRA_CFLAGS=	-O0
.endif

MAKE_FLAGS+=	EXTRA_CFLAGS=${EXTRA_CFLAGS}

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/unrar ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/unrar
	${INSTALL_MAN} ${WRKSRC}/readme.txt ${WRKSRC}/license.txt \
		${PREFIX}/share/doc/unrar

NO_REGRESS=	Yes

.include <bsd.port.mk>
