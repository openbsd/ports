# $OpenBSD: Makefile,v 1.3 2001/11/19 12:26:12 kevlo Exp $

ONLY_FOR_ARCHS=	i386

COMMENT=	"Netscape Navigator (linux)"

NEED_VERSION=	1.484

PROGRAM_V=	4.79
V2:=		${PROGRAM_V:S/.//}
EMUL_TYPE=	linux

DISTNAME=	navigator-v${V2}-us.x86-unknown-linux2.2
PKGNAME=	navigator-linux-${PROGRAM_V}
LOCATION=	linux22/navigator_standalone
DIRNAME=	navigator-v${V2}.x86-unknown-linux2.2

NO_BUILD=	Yes

.include <bsd.port.mk>
