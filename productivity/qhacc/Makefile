# $OpenBSD: Makefile,v 1.13 2009/08/10 06:34:09 kili Exp $

COMMENT=	qt home accounting program

DISTNAME=	qhacc-3.4
PKGNAME=	${DISTNAME}p0
CATEGORIES=	productivity x11

HOMEPAGE=	http://qhacc.sourceforge.net/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=qhacc/}

MAINTAINER=	Marc Espie <espie@openbsd.org>

SO_VERSION=	0.0
# NOTE: Must bump minor version if any shlib's are removed from the
# components dir to avoid pkg_add -r issues.
.for _lib in acct arcio aves balances budget cliimpio dbbase deltas \
doublebargraph doublelinegraph extprgio filedbio graphbase journal mbudget \
monthlygraph nativedbio payee piegraph profitloss qhacc qhaccext qhaccutils \
qifio shares singlebargraph singlelinegraph tbal trans upgradeio xmlio
SHARED_LIBS+=   ${_lib} ${SO_VERSION}
.endfor

# GPLv2+
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL X11 Xau Xdmcp c m pthread pthread-stubs stdc++ xcb

MODULES=	x11/qt3
USE_X11=	Yes
USE_LIBTOOL=	Yes

MAKE_ENV=	QTDIR=${MODQT_LIBDIR} LOCALBASE=${LOCALBASE} X11BASE=${X11BASE}
MAKE_FLAGS=	QTLIBDIR=${MODQT_LIBDIR} QTINCDIR=${MODQT_INCDIR}

CONFIGURE_ENV=	QTDIR=${MODQT_LIBDIR} \
		CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib -lm" \
		LIBQVERSION=${SO_VERSION}

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${MODQT_CONFIGURE_ARGS}

DOCDIR= 		${PREFIX}/share/doc/qhacc

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	cd ${WRKSRC} && ${INSTALL_DATA} FILE_FORMAT ${DOCDIR}

.include <bsd.port.mk>
