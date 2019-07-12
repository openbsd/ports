# $OpenBSD: Makefile,v 1.3 2019/07/12 20:49:44 sthen Exp $

# uses cpuid.h
ONLY_FOR_ARCHS=	i386 amd64

COMMENT=	manipulate microcode update collections for Intel

V=		2.2
PKGNAME=	iucode-tool-$V
DISTNAME=	iucode-tool_$V
WRKDIST=	${WRKDIR}/${PKGNAME}

EXTRACT_SUFX=	.tar.xz

CATEGORIES=	sysutils

MAINTAINER=	Patrick Wildt <patrick@blueri.se>

MASTER_SITES=	https://gitlab.com/iucode-tool/releases/raw/latest/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += c

BUILD_DEPENDS=		devel/argp-standalone
SEPARATE_BUILD=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
