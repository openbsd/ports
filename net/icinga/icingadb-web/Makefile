COMMENT=	web-based UI for Icinga DB

GH_PROJECT=	icingadb-web
MODULE_NAME=	icingadb-web
MODULE_VERSION=	v1.4.0
MODULE_DEST=	${PREFIX}/icinga-web2/modules/icingadb
REVISION=	0

HOMEPAGE=	https://icinga.com/docs/icinga-db-web/

MAINTAINER=	Alvar Penning <post@0x21.biz>

RUN_DEPENDS=	lang/php/${MODPHP_VERSION},-curl \
		net/icinga/icinga-php-library>=0.19.0 \
		net/icinga/icinga-php-thirdparty>=0.15.0

.include <bsd.port.mk>
