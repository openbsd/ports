# $OpenBSD: Makefile,v 1.4 2007/09/15 23:54:16 merdely Exp $

COMMENT=		generates lists of words given certain information
DISTNAME=		WordGenerator-1.7
CATEGORIES=		misc education

HOMEPAGE=		http://billposer.org/Software/WordGenerator.html

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://billposer.org/Software/Downloads/

RUN_DEPENDS=		:tcllib->=1.8:devel/tcllib \
			::x11/iwidgets

NO_BUILD=		Yes
NO_REGRESS=		Yes

PKG_ARCH=		*

do-configure:
	@perl -pi -e 's,!!LOCALBASE!!,${LOCALBASE},' ${WRKSRC}/WordGenerator.tcl

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/WordGenerator.tcl ${PREFIX}/bin/WordGenerator
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/wordgenerator
	${INSTALL_DATA} ${WRKSRC}/SampleConfiguration \
		${PREFIX}/share/examples/wordgenerator
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/wordgenerator
	${INSTALL_DATA} ${WRKSRC}/README_CONFIGURATION \
		${PREFIX}/share/doc/wordgenerator

.include <bsd.port.mk>
