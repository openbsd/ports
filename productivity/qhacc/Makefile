# $OpenBSD: Makefile,v 1.2 2000/10/22 15:43:19 espie Exp $

DISTNAME=	qhacc-0.6.1a
CATEGORIES=	productivity x11
NEED_VERSION=	1.305
HOMEPAGE=	http://www.ostrich-emulators.cx/~ryan/qhacc/
MASTER_SITES=	${HOMEPAGE} \
		ftp://ftp.ostrich-emulators.cx/qhacc/

MAINTAINER=	Marc Espie <espie@openbsd.org>

LIB_DEPENDS=	qt.2.::x11/qt2

QTDIR=		${LOCALBASE}/lib/qt2
QTLIBDIR=	${QTDIR}
QTINCDIR=	${LOCALBASE}/include/X11/qt2

MAKE_ENV=	QTDIR=${QTDIR} LOCALBASE=${LOCALBASE} X11BASE=${X11BASE}
MAKE_FLAGS=	QTLIBDIR=${QTLIBDIR} QTINCDIR=${QTINCDIR}

CONFIGURE_ENV=	AWK=awk QTDIR=${QTDIR}

CONFIGURE_STYLE=	GNU

# GPL
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes

DOCDIR=${PREFIX}/share/doc/qhacc

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	cd ${WRKSRC}/docs && ${INSTALL_DATA} *.html ${DOCDIR}
	cd ${WRKSRC} && ${INSTALL_DATA} FILE_FORMAT ${DOCDIR}
.include <bsd.port.mk>
