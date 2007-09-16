# $OpenBSD: Makefile,v 1.3 2007/09/16 00:44:00 merdely Exp $
# $FreeBSD: ports/editors/texmaker/Makefile,v 1.2 2004/01/09 09:16:33 krion Exp $

COMMENT=		LaTeX development environment
DISTNAME=		texmaker-1.11	
CATEGORIES=		editors	

HOMEPAGE=		http://www.xm1math.net/texmaker/

MAINTAINER=		Thomas Delaet <thomas@delaet.org>	

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes 
WANTLIB=		X11 Xext c m pthread stdc++

MASTER_SITES=		${HOMEPAGE}			
EXTRACT_SUFX=		.tar.bz2

MODULES=		qt3
MODQT_MT=		Yes
NO_REGRESS=		Yes

do-configure:
	@cd ${WRKSRC} && \
	qmake-mt -makefile \
		-spec ${MODQT_LIBDIR}/mkspecs/openbsd-g++ \
		-unix \
		"LIBS+=-L/usr/local/lib -lm -lqt-mt" \
		"PREFIX=${LOCALBASE}" \
		"INCLUDEPATH+=${MODQT_INCDIR}" \
		"UIC=${MODQT_UIC}" \
		"MOC=${MODQT_MOC}" \
		texmaker.pro && \
	perl -i -pe 's/ -lqt / -lpthread /' Makefile

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/texmaker ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/texmaker
	${INSTALL_DATA} ${WRKSRC}/utilities/[a-z]* ${PREFIX}/share/texmaker

.include <bsd.port.mk>
