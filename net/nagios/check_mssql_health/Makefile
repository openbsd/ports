COMMENT=	Nagios plugin to check Microsoft SQL Server

GH_ACCOUNT=	lausser
GH_PROJECT=	check_mssql_health
GH_TAGNAME=	2.7.8
DIST_TUPLE=	github lausser GLPlugin 2ae352b7a99caf54b2d4cfab3c72e72312c256e4 GLPlugin

CATEGORIES=	net databases

HOMEPAGE=	https://labs.consol.de/nagios/check_mssql_health/

# GPLv2
PERMIT_PACKAGE=	Yes

PKG_ARCH=	*
BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	databases/p5-DBD-Sybase

MAKE_FLAGS=	AWK=/usr/bin/awk \
		SED=/usr/bin/sed \
		GREP=/usr/bin/grep

CONFIGURE_STYLE= autoreconf
AUTOCONF_VERSION= 2.72
AUTOMAKE_VERSION= 1.16

#CONFIGURE_ENV=	ac_cv_path_mkdir=/bin/mkdir
CONFIGURE_ARGS=	--libexecdir=${LOCALBASE}/libexec/nagios \
		--with-nagios-user=_nagios \
		--with-nagios-group=_nagios

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/check_mssql_health
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/check_mssql_health

.include <bsd.port.mk>
