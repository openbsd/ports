# $OpenBSD: Makefile,v 1.7 2002/10/29 01:30:42 naddy Exp $

ONLY_FOR_ARCHS=	i386

COMMENT=	"Netscape Navigator (linux)"

PROGRAM_V=	4.8
V2:=		${PROGRAM_V:S/.//}
EMUL_TYPE=	linux

DISTNAME=	navigator-v${V2}-us.x86-unknown-linux2.2
PKGNAME=	navigator-linux-${PROGRAM_V}
LOCATION=	linux22/navigator_standalone
DIRNAME=	navigator-v${V2}.x86-unknown-linux2.2

NO_BUILD=	Yes
NO_REGRESS=	Yes

.include <bsd.port.mk>
