# $OpenBSD: Makefile,v 1.3 2019/07/12 20:46:28 sthen Exp $

COMMENT=	Garmin Image Tools

DISTNAME=	gimgtools-0.02
CATEGORIES=	geo

HOMEPAGE=	https://github.com/wuyongzheng/gimgtools

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://distfiles.nl/

WANTLIB += c m

USE_GMAKE=	Yes

MAKE_ENV +=	CC=${CC} ECFLAGS="${CFLAGS}"

NO_TEST=	Yes

do-install:
.for g in gimginfo gimgfixcmd gimgxor gimgunlock gimgch gimgextract cmdc
	${INSTALL_PROGRAM} ${WRKSRC}/$g ${PREFIX}/bin/
.endfor

.include <bsd.port.mk>
