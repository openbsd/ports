# $OpenBSD: Makefile,v 1.8 2013/11/29 23:21:06 jca Exp $

COMMENT=	distributed document delivery client

V=		3.0.11
DISTNAME=	gopher_${V}
PKGNAME=	gopher-${V}
REVISION=	2
CATEGORIES=	net

HOMEPAGE=	http://quux.org/devel/gopher/Downloads/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}

WANTLIB=	c m curses termcap

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu
MAKE_FLAGS=	CLIENTLIB=${SYSCONFDIR}/gopher
WRKDIST=	${WRKDIR}/gopher
USE_GROFF =	Yes
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
