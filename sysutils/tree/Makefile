# $OpenBSD: Makefile,v 1.9 2015/11/02 08:37:50 ajacoutot Exp $

COMMENT=	print ascii formatted tree of a directory structure

DISTNAME=	tree-0.61
REVISION =	4
CATEGORIES=	sysutils

HOMEPAGE=	http://spootnik.org/tree/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}
EXTRACT_SUFX=	.tgz

NO_TEST=	Yes
WANTLIB=	c

do-configure:
	@perl -pi -e 's,/usr/local,${PREFIX},' ${WRKSRC}/Makefile

.include <bsd.port.mk>
