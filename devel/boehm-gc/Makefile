# $FreeBSD: Makefile,v 1.4 1999/01/10 20:12:06 steve Exp $

DISTNAME=	gc4.12
PKGNAME=	boehm-gc-4.12
CATEGORIES=	devel
MASTER_SITES=	http://www.hpl.hp.com/personal/Hans_Boehm/gc/gc_source/ \
		http://reality.sgi.com/boehm_mti/gc_source/

ONLY_FOR_ARCHS=	i386 m68k sparc

NEED_VERSION=	1.89

EXTRACT_AFTER_ARGS=	| ${TAR} -xf - || true

MAINTAINER=	niklas@openbsd.org

MAKE_ENV=	CP="${CP}" \
		INSTALL_DATA="${INSTALL_DATA}" \
		INSTALL_MAN="${INSTALL_MAN}"

ALL_TARGET=	OpenBSD-pkg-all
INSTALL_TARGET=	OpenBSD-pkg-install
WRKSRC=		${WRKDIR}/gc

post-patch:
	@${MV} ${WRKSRC}/gc.man ${WRKSRC}/gc.man.in
	@${SED} -e "s,@PREFIX@,${PREFIX},g" ${WRKSRC}/gc.man.in > \
		${WRKSRC}/gc.man

.include <bsd.port.mk>
