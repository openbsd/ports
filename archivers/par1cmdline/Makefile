# $OpenBSD: Makefile,v 1.6 2010/02/09 12:23:59 jasper Exp $

COMMENT=	command line implementation of the PAR v1.0 specification
DISTNAME=	par-v1.1
PKGNAME=	par1cmdline-1.1p0
CATEGORIES=	archivers
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=parchive/}

HOMEPAGE=	http://parchive.sourceforge.net/

MAINTAINER=	Jolan Luff <jolan@openbsd.org>

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=		c

NO_REGRESS=	Yes

WRKDIST=${WRKDIR}/par-cmdline

# gcc 3.3.5 internal compiler error
.if ${MACHINE_ARCH:Mmips64*}
EXTRA_CFLAGS=	-O0
.endif

MAKE_FLAGS+=		EXTRA_CFLAGS=${EXTRA_CFLAGS}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/par1cmdline
	${INSTALL_PROGRAM} ${WRKSRC}/par ${PREFIX}/bin/par1
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/par1cmdline

.include <bsd.port.mk>
