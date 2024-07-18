COMMENT=		JavaScript with syntax for types

DISTNAME=		typescript-5.5.3
EXTRACT_SUFX=		.tgz
WRKDIST=		${WRKDIR}/package

CATEGORIES=		lang devel

HOMEPAGE=		https://www.typescriptlang.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# Apache-2.0
PERMIT_PACKAGE=		Yes

SITES=			https://registry.npmjs.org/typescript/-/

NO_BUILD=		Yes

RUN_DEPENDS=		lang/node

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/node_modules/typescript/
	cp -Rp ${WRKSRC}/{package.json,bin,lib} \
		${PREFIX}/lib/node_modules/typescript/
	ln -sf ${TRUEPREFIX}/lib/node_modules/typescript/bin/tsc \
		${PREFIX}/bin/tsc
	ln -sf ${TRUEPREFIX}/lib/node_modules/typescript/bin/tsserver \
		${PREFIX}/bin/tsserver

do-test:
	cd ${WRKSRC} && node -e 'require("./")'

.include <bsd.port.mk>
