# $OpenBSD: Makefile,v 1.1.1.1 2004/01/23 05:20:48 jolan Exp $

COMMENT=	"command line implementation of the PAR v2.0 specification"
DISTNAME=	par2cmdline-0.3
CATEGORIES=	archivers
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=parchive/}

HOMEPAGE=	http://parchive.sourceforge.net/\#client_par2cmdline

MAINTAINER=	Jolan Luff <jolan@openbsd.org>

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=gcc3
MODGCC3_ARCHES=	sparc64
MODGCC3_LANGS=	C++

CONFIGURE_STYLE=gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/par2cmdline
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/par2cmdline

.include <bsd.port.mk>
