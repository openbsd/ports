# $OpenBSD: Makefile,v 1.22 2002/10/26 13:25:26 todd Exp $
# $FreeBSD: Makefile,v 1.4 1999/01/10 20:12:06 steve Exp $

COMMENT=	"garbage collection and memory leak detection for C and C++"

VERSION=	6.1
DISTNAME=	gc${VERSION}
PKGNAME=	boehm-gc-${VERSION}
CATEGORIES=	devel
MASTER_SITES=	${HOMEPAGE}gc_source/

HOMEPAGE=	http://www.hpl.hp.com/personal/Hans_Boehm/gc/

MAINTAINER=	Todd T. Fries <todd@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_ENV=	CP="cp" \
		INSTALL_DATA="${INSTALL_DATA}" \
		INSTALL_MAN="${INSTALL_MAN}"

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS= ${CONFIGURE_SHARED}

WRKDIST=	${WRKDIR}/gc6.1

post-patch:
	@mv ${WRKSRC}/doc/gc.man ${WRKSRC}/doc/gc.man.in
	@sed -e "s,@PREFIX@,${PREFIX},g" ${WRKSRC}/doc/gc.man.in > \
		${WRKSRC}/doc/gc.man

post-install:
	${INSTALL_DATA} ${WRKSRC}/doc/gc.man ${PREFIX}/man/man3/gc.3
	${INSTALL_DATA_DIR} ${PREFIX}/include/private
	${INSTALL_DATA} ${WRKSRC}/include/gc{,_{cpp,backptr,gcj,mark}}.h ${PREFIX}/include
	${INSTALL_DATA} ${WRKSRC}/include/private/gc{config,_{hdrs,locks,priv,pmark}}.h ${PREFIX}/include/private

REGRESS_TARGET=	check-TESTS

.include <bsd.port.mk>
