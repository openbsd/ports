# $OpenBSD: Makefile,v 1.11 2019/07/12 20:48:27 sthen Exp $

COMMENT=	distributed document delivery client

V=		3.0.11
DISTNAME=	gopher_${V}
PKGNAME=	gopher-${V}
REVISION=	3
CATEGORIES=	net

HOMEPAGE=	http://quux.org/devel/gopher/Downloads/

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB += c curses m

MASTER_SITES=	${HOMEPAGE}


USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu
MAKE_FLAGS=	CLIENTLIB=${SYSCONFDIR}/gopher
WRKDIST=	${WRKDIR}/gopher
NO_TEST=	Yes

pre-configure:
	@perl -pi -e "s,!!PREFIX!!,${PREFIX},g;" \
		-e "s,!!SYSCONFDIR!!,${SYSCONFDIR},g" ${WRKSRC}/doc/gopher.1

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/gopher/gopher ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/gophfilt/gophfilt ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/doc/goph*.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/doc/gopherrc.5 ${PREFIX}/man/man5
	${INSTALL_DATA_DIR} ${PREFIX}/share/gopher
	${INSTALL_DATA} ${WRKSRC}/gopher/gopher.hlp ${PREFIX}/share/gopher
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gopher
	${INSTALL_DATA} ${WRKSRC}/gopher/gopher*.rc \
		${PREFIX}/share/examples/gopher

.include <bsd.port.mk>
