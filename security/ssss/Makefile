# $OpenBSD: Makefile,v 1.5 2020/06/18 11:26:34 kn Exp $

COMMENT=	split secrets using Shamir's Secret Sharing Scheme

DISTNAME=	ssss-0.5
REVISION=	2

CATEGORIES=	security

HOMEPAGE=	http://point-at-infinity.org/ssss/

MAINTAINER=	Denis Fondras <denis@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB +=	c gmp

MASTER_SITES=	http://point-at-infinity.org/ssss/

BUILD_DEPENDS=	converters/xmltoman

LIB_DEPENDS=	devel/gmp

MAKE_FLAGS=	CC="${CC}"
CFLAGS+=	-I${LOCALBASE}/include -L${LOCALBASE}/lib

TOOLS=		ssss-split ssss-combine
MANPAGE=	ssss.1
ALL_TARGET=	${TOOLS}

post-build:
	xmltoman ${WRKSRC}/ssss.manpage.xml >${WRKBUILD}/${MANPAGE}

do-install:
	${INSTALL_MAN} ${WRKBUILD}/${MANPAGE} ${PREFIX}/man/man1/
.for t in ${TOOLS}
	${INSTALL_PROGRAM} ${WRKBUILD}/${t} ${PREFIX}/bin/
	ln ${PREFIX}/man/man1/${MANPAGE} ${PREFIX}/man/man1/${t}.1
.endfor

.include <bsd.port.mk>
