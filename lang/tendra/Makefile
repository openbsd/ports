# $OpenBSD: Makefile,v 1.7 2006/02/08 20:01:52 sturm Exp $

BROKEN=		"unknown pseudo-op: .lv"

COMMENT=	"TenDRA: advanced BSD-licensed C compiler"

V=		20030803
DISTNAME=	tendra-${V}
PKGNAME=	tendra-${V}p1
CATEGORIES=	lang

HOMEPAGE=	http://www.tendra.org/
MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org> \
		Thierry Deval <tdeval@openbsd.org>

ONLY_FOR_ARCHS=	i386
# supports 68k, alpha, mips, sparc as well, but not ported yet

NO_REGRESS=	yes

MASTER_SITES=	ftp://ftp.tendra.org/pub/snapshot/ \
		ftp://ftp.recoil.org/pub/tendra/
EXTRACT_SUFX=	.tar.bz2
WRKDIST=	${WRKDIR}/tendra
ALL_TARGET=

SUBST_VARS+=	OPSYS_VER

# BSDL + Crown Copyright (BSD-like)
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

pre-build:
	(cd ${WRKSRC} && make openbsd)

post-install:
	sed s,%%TENDRA%%,${LOCALBASE}/lib/TenDRA/5.0.0/OpenBSD/${OPSYS_VER}/80x86,g \
	< ${FILESDIR}/tcc.sh > ${PREFIX}/bin/tcc

.include <bsd.port.mk>
