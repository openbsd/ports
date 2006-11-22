# $OpenBSD: Makefile,v 1.1.1.1 2006/11/22 13:38:54 jasper Exp $

COMMENT=		"generates lists of words given certain information"
DISTNAME=		WordGenerator-1.5
CATEGORIES=		misc education

HOMEPAGE=		http://billposer.org/Software/WordGenerator.html

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://billposer.org/Software/Downloads/
EXTRACT_SUFX=		.tgz

RUN_DEPENDS=		::x11/iwidgets

NO_BUILD=		Yes
NO_REGRESS=		Yes

PKG_ARCH=		*

do-configure:
	@perl -pi -e 's,!!LOCALBASE!!,${LOCALBASE},' ${WRKSRC}/WordGenerator.tcl

do-install:
	 ${INSTALL_DATA_DIR} ${PREFIX}/share/examples/wordgenerator
	 ${INSTALL_DATA} ${WRKSRC}/SampleConfiguration \
	 	${PREFIX}/share/examples/wordgenerator 
	 ${INSTALL_SCRIPT} ${WRKSRC}/WordGenerator.tcl ${PREFIX}/bin/WordGenerator

.include <bsd.port.mk>
