COMMENT=	print ascii formatted tree of a directory structure

V=		0.62
DISTNAME=	tree-$V
HOMEPAGE=	https://github.com/pyr/tree

CATEGORIES=	sysutils

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += c

MASTER_SITES=	https://github.com/pyr/tree/releases/download/$V/
EXTRACT_SUFX=	.tgz

NO_TEST=	Yes

do-configure:
	@sed -i 's,/usr/local,${PREFIX},' ${WRKSRC}/Makefile

.include <bsd.port.mk>
