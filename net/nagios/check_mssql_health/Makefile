# $OpenBSD: Makefile,v 1.6 2019/07/12 20:48:33 sthen Exp $

COMMENT=		Nagios plugin to check Microsoft SQL Server

DISTNAME=		check_mssql_health-1.5.19
CATEGORIES=		net databases

HOMEPAGE=		http://labs.consol.de/lang/en/nagios/check_mssql_health/

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES=		http://labs.consol.de/download/shinken-nagios-plugins/

PKG_ARCH=		*
BUILD_DEPENDS=		${RUN_DEPENDS} \
			archivers/gtar
TAR=			gtar
RUN_DEPENDS=		databases/p5-DBD-Sybase

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		ac_cv_path_mkdir=/bin/mkdir
MAKE_FLAGS=		AWK=/usr/bin/awk
CONFIGURE_ARGS=		--with-mymodules-dir=${LOCALBASE}/libexec/nagios \
			--with-mymodules-dyn-dir=${LOCALBASE}/libexec/nagios \
			--libexecdir=${LOCALBASE}/libexec/nagios \
			--with-nagios-user=_nagios \
			--with-nagios-group=_nagios

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/check_mssql_health
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/check_mssql_health

.include <bsd.port.mk>
