# $OpenBSD: Makefile,v 1.17 2009/08/10 06:31:43 kili Exp $

COMMENT=	Zangband (Zelazny Angband) with color, X11 support

VERSION=	2.6.2
DISTNAME=	zangband-${VERSION}
PKGNAME=	${DISTNAME}p3
CATEGORIES=	games
MASTER_SITES=	ftp://ftp.sunet.se/pub/games/Angband/Variant/ZAngband/ \
		ftp://ftp.planetmirror.com/pub/angband/Variant/ZAngband/ \
		ftp://clockwork.dementia.org/angband/Variant/ZAngband/

PERMIT_PACKAGE_CDROM=	not-for-profit redistribution only
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	not-for-profit redistribution only
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c ncurses

HOMEPAGE=		http://www.zangband.org/

USE_GMAKE=		Yes
MAKE_ENV=		CC="${CC}" CFLAGS="${CFLAGS}"

AUTOCONF_VERSION=	2.54
AUTOMAKE_VERSION=	1.4
CONFIGURE_STYLE=	autoconf automake
CONFIGURE_ENV=		TRUEPREFIX="${TRUEPREFIX}"

WRKDIST=		${WRKDIR}/zangband

FLAVORS=		no_x11
FLAVOR?=	

.if !${FLAVOR:L:Mno_x11}
USE_X11=		Yes
CONFIGURE_ARGS+=	--with-x
WANTLIB+=		ICE SM X11 Xaw Xmu Xt pthread-stubs xcb
.else
CONFIGURE_ARGS+=	--without-x
.endif

post-patch:
	@cd ${WRKSRC}; AUTOMAKE_VERSION=${AUTOMAKE_VERSION} aclocal

pre-configure:
	@cd ${WRKSRC}; AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		automake --foreign --add-missing --copy

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/zangband
	(cd ${WRKDIST}/lib && tar -cf - * ) | \
	   (cd ${PREFIX}/share/zangband && tar -xf - )
	@chown -R ${SHAREOWN}:games ${PREFIX}/share/zangband
	@find ${PREFIX} \( -name Makefile\* -o -name delete.me \) \
           -exec rm "{}" \;
	${INSTALL} -s -o ${BINOWN} -g games -m 2555 ${WRKSRC}/src/zangband \
	   ${PREFIX}/bin

.include <bsd.port.mk>
