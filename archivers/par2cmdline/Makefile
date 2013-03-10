# $OpenBSD: Makefile,v 1.9 2013/03/10 22:28:04 espie Exp $

COMMENT=	command line implementation of the PAR v2.0 specification
DISTNAME=	par2cmdline-0.4
CATEGORIES=	archivers
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=parchive/}

HOMEPAGE=	http://parchive.sourceforge.net/\#client_par2cmdline

# GPL
PERMIT_PACKAGE_CDROM=	Yes

REVISION =	1
WANTLIB=		c m stdc++

CONFIGURE_STYLE=gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/par2cmdline
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/par2cmdline

.include <bsd.port.mk>
