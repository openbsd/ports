# $OpenBSD: Makefile,v 1.6 2009/05/25 09:46:08 benoit Exp $

COMMENT=		generates lists of words given certain information
DISTNAME=		WordGenerator-1.9
CATEGORIES=		misc education

HOMEPAGE=		http://billposer.org/Software/WordGenerator.html

MAINTAINER=		Benoit Lecocq <benoit@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://billposer.org/Software/Downloads/

MODULES=		x11/tk

RUN_DEPENDS=		:tcllib->=1.8:devel/tcllib \
			::x11/iwidgets

NO_BUILD=		Yes
NO_REGRESS=		Yes

PKG_ARCH=		*

pre-configure:
	${SUBST_CMD} ${WRKSRC}/WordGenerator.tcl

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/WordGenerator.tcl ${PREFIX}/bin/WordGenerator
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/wordgenerator
	${INSTALL_DATA} ${WRKSRC}/SampleConfiguration \
		${PREFIX}/share/examples/wordgenerator
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/wordgenerator
	${INSTALL_DATA} ${WRKSRC}/README_CONFIGURATION \
		${PREFIX}/share/doc/wordgenerator

.include <bsd.port.mk>
