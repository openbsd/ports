# $OpenBSD: Makefile,v 1.1.1.1 2004/04/06 07:40:17 xsa Exp $

COMMENT=	"online Image GALlery generator"

DISTNAME=	igal-1.4
CATEGORIES=	www graphics

HOMEPAGE=	http://www.stanford.edu/~epop/igal/

MAINTAINER=	Xavier Santolaria <xsa@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}

RUN_DEPENDS=	::graphics/ImageMagick \
		::graphics/jpeg

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

DATADIR=	${PREFIX}/share/igal

do-configure:
	@perl -pi -e "s,/usr/local,${PREFIX},g;" \
		-e "s,${PREFIX}/lib/igal,${DATADIR},g;" ${WRKSRC}/igal{,.1}

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/igal ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/igal.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${DATADIR}
	${INSTALL_DATA} ${WRKSRC}/*.{css,html,png} ${DATADIR}

.include <bsd.port.mk>
