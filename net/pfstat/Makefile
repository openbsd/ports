# $OpenBSD: Makefile,v 1.41 2019/07/12 20:48:43 sthen Exp $

COMMENT-main=	packet filter statistics visualization
COMMENT-daemon=	pfstat daemon

DISTNAME=	pfstat-2.5

PKGNAME-main=	${DISTNAME}
PKGNAME-daemon=	${DISTNAME:S/-/d-/}
CATEGORIES=	net
MASTER_SITES=	http://www.benzedrine.ch/
REVISION=	4

HOMEPAGE=	http://www.benzedrine.ch/pfstat.html

# BSD
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS=		graphics/gd

MULTI_PACKAGES=		-main -daemon

WANTLIB-main=		c iconv m z jpeg png pthread gd>=20
LIB_DEPENDS-main=	converters/libiconv graphics/gd
WANTLIB-daemon=		c
LIB_DEPENDS-daemon=
RUN_DEPENDS-daemon=

NO_TEST=		Yes

pre-configure:
	@perl -pi -e "s,/etc,${SYSCONFDIR}," ${WRKSRC}/pfstat.c \
		${WRKSRC}/pfstat.8

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/pfstat ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/pfstat.8 ${PREFIX}/man/man8
	${INSTALL_PROGRAM} ${WRKSRC}/pfstatd/pfstatd ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/pfstatd/pfstatd.8 ${PREFIX}/man/man8
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/pfstat
	${INSTALL_DATA} ${WRKSRC}/pfstat.conf.example	\
			${PREFIX}/share/examples/pfstat/pfstat.conf

.include <bsd.port.mk>
