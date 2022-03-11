COMMENT=		Nagios plugin to check Microsoft SQL Server

DISTNAME=		check_mssql_health-2.7.2.2
CATEGORIES=		net databases

HOMEPAGE=		https://labs.consol.de/nagios/check_mssql_health/

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES=		https://labs.consol.de/assets/downloads/nagios/

PKG_ARCH=		*
BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		databases/p5-DBD-Sybase

MAKE_FLAGS=		AWK=/usr/bin/awk

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		ac_cv_path_mkdir=/bin/mkdir
CONFIGURE_ARGS=		--libexecdir=${LOCALBASE}/libexec/nagios \
			--with-nagios-user=_nagios \
			--with-nagios-group=_nagios

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/check_mssql_health
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/check_mssql_health

.include <bsd.port.mk>
