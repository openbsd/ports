# $OpenBSD: Makefile,v 1.10 2007/07/13 08:53:47 aanriot Exp $

COMMENT=	"qt home accounting program"

DISTNAME=	qhacc-0.6.1a
CATEGORIES=	productivity x11
HOMEPAGE=	http://www.ostrich-emulators.cx/~ryan/qhacc/
MASTER_SITES=	${HOMEPAGE} \
		ftp://ftp.ostrich-emulators.cx/qhacc/

MAINTAINER=	Marc Espie <espie@openbsd.org>

MODULES=	x11/qt2
USE_X11=	Yes

MAKE_ENV=	QTDIR=${MODQT_LIBDIR} LOCALBASE=${LOCALBASE} X11BASE=${X11BASE}
MAKE_FLAGS=	QTLIBDIR=${MODQT_LIBDIR} QTINCDIR=${MODQT_INCDIR}

CONFIGURE_ENV=	AWK=awk QTDIR=${MODQT_LIBDIR}

CONFIGURE_STYLE=	GNU

# GPL
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c m stdc++ 

DOCDIR=${PREFIX}/share/doc/qhacc

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	cd ${WRKSRC}/docs && ${INSTALL_DATA} *.html ${DOCDIR}
	cd ${WRKSRC} && ${INSTALL_DATA} FILE_FORMAT ${DOCDIR}
.include <bsd.port.mk>
