# $OpenBSD: Makefile,v 1.2 2018/10/09 15:22:59 ajacoutot Exp $

COMMENT=		manage Exoscale infrastructure from the command-line

GH_COMMIT=		2ef336b71993ad3a552392e479f88a9a9ed7fa55
GH_ACCOUNT=		exoscale
GH_PROJECT=		cli
DISTNAME=		${GH_ACCOUNT}-${GH_PROJECT}-1.0.0.20181003
REVISION=		0

CATEGORIES=		sysutils

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c pthread

MODULES=		lang/go

post-install:
	mv ${PREFIX}/bin/{cli,exo}

.include <bsd.port.mk>
