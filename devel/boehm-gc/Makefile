# $FreeBSD: Makefile,v 1.4 1999/01/10 20:12:06 steve Exp $

DISTNAME=	gc4.12
PKGNAME=	boehm-gc-4.12
CATEGORIES=	devel
NEED_VERSION=	1.330
MASTER_SITES=	http://www.hpl.hp.com/personal/Hans_Boehm/gc/gc_source/ \
		http://reality.sgi.com/boehm_mti/gc_source/

ONLY_FOR_ARCHS=	i386 m68k sparc

EXTRACT_CASES= gc4.12.tar.gz) tar zxf ${FULLDISTDIR}/$$archive || true;;

MAINTAINER=	niklas@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_ENV=	CP="cp" \
		INSTALL_DATA="${INSTALL_DATA}" \
		INSTALL_MAN="${INSTALL_MAN}"

ALL_TARGET=	OpenBSD-pkg-all
INSTALL_TARGET=	OpenBSD-pkg-install
WRKDIST=		${WRKDIR}/gc

post-patch:
	@mv ${WRKSRC}/gc.man ${WRKSRC}/gc.man.in
	@sed -e "s,@PREFIX@,${PREFIX},g" ${WRKSRC}/gc.man.in > \
		${WRKSRC}/gc.man

.include <bsd.port.mk>
