# $OpenBSD: Makefile,v 1.2 2003/08/04 23:41:08 avsm Exp $

COMMENT=	"TeNDRA: advanced BSD-licensed C compiler"

V=		20030803
DISTNAME=	tendra-${V}
CATEGORIES=	lang

HOMEPAGE=	http://www.tendra.org/
MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org> \
		Thierry Deval <tdeval@openbsd.org>

ONLY_FOR_ARCHS=	i386
# supports 68k, alpha, mips, sparc as well, but not ported yet

MASTER_SITES=	ftp://ftp.tendra.org/pub/snapshot/ \
		ftp://ftp.recoil.org/pub/tendra/
EXTRACT_SUFX=	.tar.bz2
WRKDIST=	${WRKDIR}/tendra
ALL_TARGET=

# BSDL + Crown Copyright (BSD-like)
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

pre-build:
	(cd ${WRKSRC} && make openbsd)

post-install:
	sed s,%%TENDRA%%,${LOCALBASE}/lib/TenDRA/5.0.0/OpenBSD/3.3/80x86,g \
	< ${FILESDIR}/tcc.sh > ${PREFIX}/bin/tcc

.include <bsd.port.mk>
