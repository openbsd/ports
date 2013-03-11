# $OpenBSD: Makefile,v 1.3 2013/03/11 11:35:43 espie Exp $

COMMENT=	read and set MPEG-4/3GPP metadata tags

DISTNAME=	AtomicParsley-source-0.9.0
REVISION=	0
EXTRACT_SUFX=	.zip
PKGNAME=	${DISTNAME:L:S/-source//}

CATEGORIES=	multimedia

HOMEPAGE=	http://atomicparsley.sourceforge.net/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv2 "or its successor"
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c m stdc++

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=atomicparsley/}

NO_TEST=	Yes

do-configure:
	cp ${FILESDIR}/Makefile ${WRKSRC}

.include <bsd.port.mk>
