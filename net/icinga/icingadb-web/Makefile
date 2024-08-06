COMMENT=	web-based UI for Icinga DB

GH_PROJECT=	icingadb-web
MODULE_NAME=	icingadb-web
MODULE_VERSION=	v1.1.3
MODULE_DEST=	${PREFIX}/icinga-web2/modules/icingadb

HOMEPAGE=	https://icinga.com/docs/icinga-db-web/

MAINTAINER=	Alvar Penning <post@0x21.biz>

RUN_DEPENDS=	lang/php/${MODPHP_VERSION},-curl \
		net/icinga/icinga-php-library>=0.14.1 \
		net/icinga/web2

.include <bsd.port.mk>
