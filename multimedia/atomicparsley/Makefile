# $OpenBSD: Makefile,v 1.1.1.1 2009/11/06 14:29:14 sthen Exp $

COMMENT=	read and set MPEG-4/3GPP metadata tags

DISTNAME=	AtomicParsley-source-0.9.0
EXTRACT_SUFX=	.zip
PKGNAME=	${DISTNAME:L:S/-source//}

CATEGORIES=	multimedia

HOMEPAGE=	http://atomicparsley.sourceforge.net/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv2 "or its successor"
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c m stdc++

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=atomicparsley/}

NO_REGRESS=	Yes

do-configure:
	cp ${FILESDIR}/Makefile ${WRKSRC}

.include <bsd.port.mk>
