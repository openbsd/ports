# $OpenBSD: Makefile,v 1.3 2002/12/29 20:41:07 fgsch Exp $

COMMENT=	"convert Intel assembly language (nasm) to AT&T syntax (gas)"

VERSION=	1.3.3
DISTNAME=	intel2gas-${VERSION}
CATEGORIES=	lang

HOMEPAGE=	http://www.niksula.cs.hut.fi/~mtiihone/intel2gas/
MASTER_SITES=	${HOMEPAGE}

MAINTAINER=	Vincent Derrien <vincent.derrien@free.fr>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_REGRESS=	Yes
CONFIGURE_STYLE=gnu
MAKE_FLAGS=	CXX="${CXX}"

DATAPREFIX=	${PREFIX}/share/intel2gas
DATADIRS=	i2g g2i m2g
DOCS=		BUGS DATAFILES README

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/intel2gas ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${DATAPREFIX}
.for dir in ${DATADIRS}
	${INSTALL_DATA_DIR} ${DATAPREFIX}/${dir}
	@cd ${WRKSRC}; ${INSTALL_DATA} ${dir}/* ${DATAPREFIX}/${dir}
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/intel2gas
	@cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/intel2gas

.include <bsd.port.mk>
