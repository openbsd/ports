COMMENT=	configuration and state database for Icinga

GH_PROJECT=	icingadb
GH_TAGNAME=	v1.2.0

MODGO_MODNAME=	github.com/icinga/icingadb
MODGO_VERSION=	${GH_TAGNAME}

WANTLIB += c pthread

HOMEPAGE=	https://icinga.com/docs/icinga-db/
MAINTAINER=	Alvar Penning <post@0x21.biz>

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES=	lang/go

.include "modules.inc"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/icingadb/markdown
	${INSTALL_DATA} ${WRKSRC}/{AUTHORS,LICENSE,*.md} ${PREFIX}/share/doc/icingadb
	cp -a ${WRKSRC}/doc ${PREFIX}/share/doc/icingadb/

	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/icingadb/schema
	${INSTALL_DATA} ${WRKSRC}/config.example.yml ${PREFIX}/share/examples/icingadb
	cp -a ${WRKSRC}/schema ${PREFIX}/share/examples/icingadb/

.include <bsd.port.mk>
