# $OpenBSD: Makefile,v 1.10 2015/11/04 21:36:31 sthen Exp $

COMMENT=	print ascii formatted tree of a directory structure

GH_ACCOUNT=	pyr
GH_PROJECT=	tree
GH_TAGNAME=	0.62

DISTNAME=	tree-${GH_TAGNAME}
CATEGORIES=	sysutils

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

NO_TEST=	Yes

do-configure:
	@sed -i 's,/usr/local,${PREFIX},' ${WRKSRC}/Makefile

.include <bsd.port.mk>
