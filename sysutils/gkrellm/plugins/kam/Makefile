# $OpenBSD: Makefile,v 1.3 2005/01/20 20:19:39 sturm Exp $

COMMENT=	"Web cam plugin for GkrellM2"

VERSION=	2.0.0
DISTNAME=	gkrellkam-${VERSION}
PKGNAME=	${DISTNAME}p0
CATEGORIES=	graphics sysutils/gkrellm

HOMEPAGE=	http://gkrellkam.sourceforge.net

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gkrellkam/}
DISTFILES=	gkrellkam_${VERSION}.tar.gz

RUN_DEPENDS+=	:wget-*:net/wget

PLUGIN=		${WRKSRC}/gkrellkam2.so

WANTLIB=

post-install:
	${INSTALL_MAN} ${WRKSRC}/gkrellkam-list.5 ${PREFIX}/man/man5/gkrellkam.5

.include <bsd.port.mk>
