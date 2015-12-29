# $OpenBSD: Makefile,v 1.12 2015/12/29 19:49:41 jasper Exp $

COMMENT=	print ascii formatted tree of a directory structure

GH_ACCOUNT=	pyr
GH_PROJECT=	tree
GH_TAGNAME=	0.62

CATEGORIES=	sysutils

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

NO_TEST=	Yes

do-configure:
	@sed -i 's,/usr/local,${PREFIX},' ${WRKSRC}/Makefile

.include <bsd.port.mk>
