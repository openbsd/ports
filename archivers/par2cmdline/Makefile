# $OpenBSD: Makefile,v 1.10 2015/04/19 17:52:47 jca Exp $

COMMENT=	command line implementation of the PAR v2.0 specification
DISTNAME=	par2cmdline-0.4
REVISION=	2
CATEGORIES=	archivers
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=parchive/}

HOMEPAGE=	http://parchive.sourceforge.net/\#client_par2cmdline

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c m stdc++

CONFIGURE_STYLE=gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/par2cmdline
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/par2cmdline

.include <bsd.port.mk>
