COMMENT =	official Go language server developed by the Go team

MODGO_MODNAME =	golang.org/x/tools/gopls
MODGO_VERSION =	v0.11.0

DISTNAME =	gopls-${MODGO_VERSION}

CATEGORIES =	devel

HOMEPAGE =	https://pkg.go.dev/golang.org/x/tools/gopls

MAINTAINER =	Laurent Cheylus <foxy@free.fr>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB +=	c pthread

MODULES =	lang/go

DOCDIR =	${PREFIX}/share/doc/gopls

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}/doc/design
	${INSTALL_DATA} ${WRKSRC}/README.md ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/*.md ${DOCDIR}/doc
	${INSTALL_DATA} ${WRKSRC}/doc/design/*.md ${DOCDIR}/doc/design

.include "modules.inc"
.include <bsd.port.mk>
