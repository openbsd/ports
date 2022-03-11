COMMENT=		wm-dockapp; displays the time in different time zones

DISTNAME=		wmtz-0.7_p20150816
PKGNAME=		${DISTNAME:S/_p/./}

CATEGORIES=		x11 x11/windowmaker

HOMEPAGE=		https://www.dockapps.net/wmtz

# GPL
PERMIT_PACKAGE=	Yes
WANTLIB=		X11 Xext Xpm c dockapp m

# dockapps.net only provides an old tarball without libdockapp support.
MASTER_SITES=		https://distfiles.gentoo.org/distfiles/

LIB_DEPENDS=		devel/libdockapp>=0.7.3

MAKE_ENV+=		CC="${CC}" LDFLAGS="${LDFLAGS}" CFLAGS="${CFLAGS}"

NO_TEST=		Yes

CFLAGS+=		-I${X11BASE}/include -I${LOCALBASE}/include
LDFLAGS+=		-L${X11BASE}/lib -L${LOCALBASE}/lib

WRKSRC=			${WRKDIST}/wmtz

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/wmtz ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/wmtz.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/wmtz
	${INSTALL_DATA} ${WRKSRC}/wmtzrc ${PREFIX}/share/examples/wmtz/sample.wmtzrc

.include <bsd.port.mk>
