# $OpenBSD: Makefile,v 1.4 2002/03/21 21:25:54 espie Exp $

ONLY_FOR_ARCHS=	i386

COMMENT=	"Netscape Navigator (linux)"

NEED_VERSION=	1.515

PROGRAM_V=	4.79
V2:=		${PROGRAM_V:S/.//}
EMUL_TYPE=	linux

DISTNAME=	navigator-v${V2}-us.x86-unknown-linux2.2
PKGNAME=	navigator-linux-${PROGRAM_V}
LOCATION=	linux22/navigator_standalone
DIRNAME=	navigator-v${V2}.x86-unknown-linux2.2

NO_BUILD=	Yes

.include <bsd.port.mk>
